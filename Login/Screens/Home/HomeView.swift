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
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Home.title
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Register.username
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
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
        addSubview(title)
        addSubview(userNameLabel)
    }
    
    @objc func signUpButtonAction() {
        viewController.viewModel.coordinator.callRegister()
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            userNameLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
