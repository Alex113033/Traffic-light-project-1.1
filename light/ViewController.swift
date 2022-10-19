//
//  ViewController.swift
//  light
//
//  Created by Александр on 24.03.2022.
//

import UIKit

enum LightColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchLightButton: UIButton!

    private var colorButton = LightColor.red
    
    private var lightOn: CGFloat = 1
    private var lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        switchLightButton.layer.cornerRadius = 10
        switchLightButton.setTitle("START", for: .normal)
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }
    
//    viewWillLayoutSubviews
//    Если не используется Auto Layout, то viewWillLayoutSubviews является тем самым местом, где можно изменить размеры subview и их положение. Вызов super. viewWillLayoutSubviews не нужен.
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius =  redLightView.frame.height * 0.5
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height * 0.5
        greenLightView.layer.cornerRadius = yellowLightView.frame.height * 0.5
        
        switchLightButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func pressingButton() {
        switchLightButton.setTitle("NEXT", for: .normal)
        
        switch colorButton {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            colorButton = .yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            colorButton = .green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            colorButton = .red
        }
    }
}
