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
            UIColor(hex: "#52396D").cgColor,
            UIColor(hex: "#3a215d").cgColor
        ]

        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame = view.bounds

        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

// MARK: Config hexadecimal
extension UIColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
