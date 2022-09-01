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
    
    @IBAction func heightValueChanged(_ sender: UISlider) {
        print("height value: \(sender.value)")
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        print("weight value: \(sender.value)")
    }
    
    @IBAction func CalculateButtonPressed(_ sender: UIButton) {
        print("calculate pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

