//
//  ViewController.swift
//  SwiftRadioButton
//
//  Created by Sanjeev Gautam on 27/07/18.
//  Copyright © 2018 SWS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SWSRadioButtonViewProtocol {
    
    @IBOutlet weak var radioButtonOne: SWSRadioButtonView!
    @IBOutlet weak var radioButtonTwo: SWSRadioButtonView!
    @IBOutlet weak var radioButtonThree: SWSRadioButtonView!
    
    @IBOutlet weak var radioButtonA: SWSRadioButtonView!
    @IBOutlet weak var radioButtonB: SWSRadioButtonView!
    @IBOutlet weak var radioButtonC: SWSRadioButtonView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.radioButtonOne.setRadioButtonView(radioText: "One", isSelected: true, delegate: self)
        self.radioButtonTwo.setRadioButtonView(radioText: "Two", isSelected: false, delegate: self)
        self.radioButtonThree.setRadioButtonView(radioText: "Three", isSelected: false, delegate: self)
        
        self.radioButtonA.setRadioButtonView(radioText: "A", isSelected: true, delegate: self)
        self.radioButtonB.setRadioButtonView(radioText: "B", isSelected: false, delegate: self)
        self.radioButtonC.setRadioButtonView(radioText: "C", isSelected: false, delegate: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func radioButtonTapped(radioButton: SWSRadioButtonView) {
        if radioButton == self.radioButtonOne {
            print("First radio button tapped")
            
        } else if radioButton == self.radioButtonTwo {
            print("Second radio button tapped")
            
        } else if radioButton == self.radioButtonThree {
            print("Third radio button tapped")
            
        } else if radioButton == self.radioButtonA {
            print("A radio button tapped")
            
        } else if radioButton == self.radioButtonB {
            print("B radio button tapped")
            
        } else if radioButton == self.radioButtonC {
            print("C radio button tapped")
            
        }
    }
}

