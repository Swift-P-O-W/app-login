//
//  HomeView.swift
//  Login
//
//  Created by João Pedro Volponi on 01/10/24.
//

import UIKit

class HomeView: UIView {
    private let viewController: HomeViewController
    private let configBackground = ConfigBackground()
    
    
    init(viewController: HomeViewController) {
        self.viewController = viewController
        super.init(frame: .zero)
        configBackGround()
        configHierarchy()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func configBackGround() {
        configBackground.applyGradientBackground(view: self, firstColor: LoginEnum.Colors.purplePrimary, secondColor: LoginEnum.Colors.purpleSecondary)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let gradientLayer = self.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = self.bounds
        }
    }
    
    private func configHierarchy(){
        //
    }
    
    @objc func signUpButtonAction() {
        viewController.viewModel.coordinator.callRegister()
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            //
        ])
    }
}
