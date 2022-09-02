//
//  ResultViewController.swift
//  IMC Calculator
//
//  Created by Yan Oliveira on 02/09/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmi?.value
        textLabel.text = bmi?.text
        mainView.backgroundColor = bmi?.backgroundColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
