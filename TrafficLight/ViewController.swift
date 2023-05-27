//
//  ViewController.swift
//  TrafficLight
//
//  Created by Артём Потёмкин on 27.05.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let isOn: CGFloat = 1
    private let isOff: CGFloat = 0.3
    private var currentLight: CurrentLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
    }

    @IBAction func startButtotPressed() {
        if startButton.titleLabel?.text == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        switch currentLight {
            
        case .red:
            redLight.alpha = isOn
            greenLight.alpha = isOff
            yellowLight.alpha = isOff
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = isOn
            redLight.alpha = isOff
            greenLight.alpha = isOff
            currentLight = .green
        case .green:
            greenLight.alpha = isOn
            yellowLight.alpha = isOff
            redLight.alpha = isOff
            currentLight = .red
        }
    }
    
}

