//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by pamarori mac on 07/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if bmiValue == "0.0" {
            bmiLabel.text = "Height Cannot be 0!"
            bmiLabel.font = bmiLabel.font.withSize(25)
        } else {
           bmiLabel.text = bmiValue!
        }
        
        adviceLabel.text = advice
        view.backgroundColor = color

        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
