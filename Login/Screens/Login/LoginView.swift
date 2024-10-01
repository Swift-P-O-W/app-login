//
//  LoginView.swift
//  Login
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 21/09/24.
//

import UIKit

class LoginView: UIView {
    private let viewController: LoginViewController
    private let configBackground = ConfigBackground()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Login.title
        label.textColor = .white
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Register.email
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    lazy var emailLabelTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.isSecureTextEntry = false
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Register.password
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    lazy var passwordTextField: PasswordTextField = {
        let passwordField = PasswordTextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(LoginEnum.Login.title, for: .normal)
        button.setTitleColor(UIColor(named: "PurpleSecondary"), for: .normal)
        button.backgroundColor = UIColor(named: "PurpleTertiary")
        button.layer.cornerRadius = 12
        return button
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(LoginEnum.Register.title, for: .normal)
        button.setTitleColor(UIColor(named: "PurpleSecondary"), for: .normal)
        button.backgroundColor = UIColor(named: "PurpleTertiary")
        button.layer.cornerRadius = 12
        return button
    }()
    
    init(viewController: LoginViewController) {
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
        addSubview(emailLabel)
        addSubview(emailLabelTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(signInButton)
        addSubview(signUpButton)
    }
    
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 30),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            emailLabelTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailLabelTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            emailLabelTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            emailLabelTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: emailLabelTextField.bottomAnchor, constant: 5),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabelTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailLabelTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailLabelTextField.heightAnchor),
            
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            signInButton.trailingAnchor.constraint(equalTo: emailLabelTextField.trailingAnchor),
            signInButton.leadingAnchor.constraint(equalTo: emailLabelTextField.leadingAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: emailLabelTextField.trailingAnchor),
            signUpButton.leadingAnchor.constraint(equalTo: emailLabelTextField.leadingAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
