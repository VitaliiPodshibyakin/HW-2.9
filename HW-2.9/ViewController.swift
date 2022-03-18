//
//  ViewController.swift
//  HW-2.9
//
//  Created by Виталий Подшибякин on 18.03.2022.
//

import Spring

class ViewController: UIViewController {
    
    var animations = ["shake", "pop", "morph", "squeeze"]
    var curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]

    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runSpringAnimationButton: SpringButton!
    @IBOutlet var animationPropertiesLabel: UILabel!
    

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = animations.first ?? ""
        springAnimationView.curve = curves.first ?? ""
        springAnimationView.force = CGFloat.random(in: 0...2)
        
        
        animationPropertiesLabel.text = "preset:\(animations.first ?? "") \n preset:\(curves.first ?? "")\n force: \(String(format: "%.2f", springAnimationView.force.magnitude))"
        
        springAnimationView.animate()
        animations.shuffle()
        curves.shuffle()
        runSpringAnimationButton.setTitle(animations.first ?? "", for: .normal)

        }
}

