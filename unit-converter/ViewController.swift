//
//  ViewController.swift
//  unit-converter
//
//  Created by Eduardo Giadáns Zárate on 24/06/20.
//  Copyright © 2020 Eduardo Giadáns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchUnits: UISwitch!
    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if switchUnits.isOn {
           unitLabel.text = "Km"
       } else {
           unitLabel.text = "Mi"
       }
    }

    @IBAction func calculateChange(_ sender: Any) {
        if let data = numberTxt.text {
            if let number = Double (data) {
                if switchUnits.isOn {
                    resultLabel.text = "\(ceil(number/1.60934*10000)/10000) Mi"
                } else {
                    resultLabel.text = "\(ceil(number*1.60934*10000)/10000) Km"
                }
            }
        }
    }
    
    @IBAction func switchChange(_ sender: Any) {
        if switchUnits.isOn {
            unitLabel.text = "Km"
        } else {
            unitLabel.text = "Mi"
        }
    }
    
}

