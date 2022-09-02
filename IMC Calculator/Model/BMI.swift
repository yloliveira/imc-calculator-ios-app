//
//  BMIBrain.swift
//  IMC Calculator
//
//  Created by Yan Oliveira on 02/09/22.
//

import UIKit

struct BMI {
    var value: String?
    var text: String?
    var backgroundColor: UIColor?
    
    init(value: Float) {
        self.value = String(format: "%.2f", value)
        if value < 18.5 {
            self.text = "Você está abaixo do seu peso ideal!"
            self.backgroundColor = UIColor(red: 255/255, green: 189/255, blue: 189/255, alpha: 1)
        } else if value < 25.5 {
            self.text = "Parabéns, você está em seu peso ideal!"
            self.backgroundColor = UIColor(red: 189/255, green: 255/255, blue: 189/255, alpha: 1)
        } else {
            self.text = "Você está acima do seu peso ideal."
            self.backgroundColor = UIColor(red: 255/255, green: 227/255, blue: 189/255, alpha: 1)
        }
    }
}
