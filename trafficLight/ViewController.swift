//
//  ViewController.swift
//  trafficLight
//
//  Created by Дмитрий Дуров on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var isRedLightOn = false
    private var isYellowLightOn = false
    private var isGreenLightOn = false
    
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if !isRedLightOn && !isYellowLightOn && !isGreenLightOn || isGreenLightOn  {
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            isGreenLightOn = false
            isRedLightOn = true
            
        } else if isRedLightOn {
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            isRedLightOn = false
            isYellowLightOn = true
            
        } else if isYellowLightOn {
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            isYellowLightOn = false
            isGreenLightOn = true
        }
    }
}
