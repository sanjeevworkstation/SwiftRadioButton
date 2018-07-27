//
//  APRadioButtonView.swift
//  SwiftRadioButton
//
//  Created by Sanjeev Gautam on 27/07/18.
//  Copyright © 2018 SWS. All rights reserved.
//

import UIKit

protocol SWSRadioButtonViewProtocol: class {
    func radioButtonTapped(radioButton: SWSRadioButtonView)
}

// MARK:-
class SWSRadioButtonView: UIView {

    @IBOutlet weak private var contentView: UIView!
    @IBOutlet weak private var radioLabel: UILabel!
    @IBOutlet weak private var radioImageView: UIImageView!
    @IBOutlet weak private var radioButton: UIButton!
    
    weak var delegate: SWSRadioButtonViewProtocol?
    
    var isRadioButtonSelected: Bool = false {
        didSet {
            if isRadioButtonSelected {
                self.radioImageView.image = UIImage(named: "radioOn")
            } else {
                self.radioImageView.image = UIImage(named: "radioOff")
            }
        }
    }
    
    // MARK:-
    func setRadioButtonView(radioText: String, isSelected: Bool, delegate: SWSRadioButtonViewProtocol?) {
        self.radioLabel.text = radioText
        self.isRadioButtonSelected = isSelected
        self.delegate = delegate
    }
    
    // MARK:- Button Action
    @IBAction func radioButtonAction(_ sender: UIButton) {
        
        // Set State of current Radio Buton
        self.isRadioButtonSelected = true
        
        // Set UnSelect State of other Radio Buttons
        if let vcSubviews = self.superview?.subviews {
            for subView in vcSubviews {
                if subView.isKind(of: SWSRadioButtonView.self) {
                    if let subViewRadioButton = subView as? SWSRadioButtonView, subViewRadioButton != self {
                        subViewRadioButton.isRadioButtonSelected = false
                    }
                }
            }
        }
        
        self.delegate?.radioButtonTapped(radioButton: self)
    }
    
    // MARK:- Private Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        // load xib
        Bundle.main.loadNibNamed("SWSRadioButtonView", owner: self, options: nil)
        addSubview(contentView)
        self.contentView.frame = self.bounds
        self.contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.contentView.backgroundColor = UIColor.white
        self.isRadioButtonSelected = false
    }

}
