//
//  CalculateViewController.swift
//  IMC Calculator
//
//  Created by Yan Oliveira on 01/09/22.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    let HEIGHT_UNIT = "m"
    let WEIGHT_UNIT = "kg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let height = heightSlider.value
        let weight = weightSlider.value
        heightLabel.text = "\(height)\(HEIGHT_UNIT)"
        weightLabel.text = "\(weight)\(WEIGHT_UNIT)"
    }
    
    @IBAction func heightValueChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)\(HEIGHT_UNIT)"
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        let weight = String(format: "%.1f", sender.value)
        weightLabel.text = "\(weight)\(WEIGHT_UNIT)"
    }
    
    @IBAction func CalculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print("calculate pressed: \(String(format: "%.2f", bmi))")
    }
    
}

