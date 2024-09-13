//
//  Background.swift
//  Login
//
//  Created by João Pedro Volponi on 13/09/24.
//

import Foundation
import UIKit

class ConfigBackground {
    
    func applyGradientBackground(view: UIView) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [
            UIColor(named: "PurplePrimary"),
            UIColor(named: "PurpleSecondary")
        ]

        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame = view.bounds

        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
