//
//  RegisterView.swift
//  Login
//
//  Created by João Pedro Volponi on 12/09/24.
//

import Foundation
import UIKit

class RegisterView: UIView, UITextFieldDelegate {
    private let viewController: RegisterViewController
    private let configBackground = ConfigBackground()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "arrow-back"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        return button
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Register.title
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    // MARK: - UserName
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LoginEnum.Register.username
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.tintColor = .white
        textField.textColor = .white
        textField.delegate = self
        textField.keyboardType = .default
        textField.isSecureTextEntry = false
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        return textField
    }()
    
    // MARK: - E-mail
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
        textField.tintColor = .white
        textField.textColor = .white
        textField.delegate = self
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = false
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        return textField
    }()
    
    // MARK: - Password
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
        passwordField.delegate = self
        return passwordField
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(LoginEnum.Register.title, for: .normal)
        button.addTarget(self, action: #selector(signUpButtonAction), for: .touchUpInside)
        button.setTitleColor(UIColor(named: "PurpleSecondary"), for: .normal)
        button.backgroundColor = UIColor(named: "PurpleTertiary")
        button.layer.cornerRadius = 12
        return button
    }()
    
    init(viewController: RegisterViewController) {
        self.viewController = viewController
        super.init(frame: .zero)
        configBackGround()
        configHierarchy()
        configConstraints()
        setupTapGesture()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func backButtonAction() {
        viewController.backButtonAction()
    }
    
    @objc func configBackGround() {
        configBackground.applyGradientBackground(view: self, firstColor: LoginEnum.Colors.purplePrimary, secondColor: LoginEnum.Colors.purpleSecondary)
    }
    
    @objc func signUpButtonAction() {
        guard let email = emailLabelTextField.text,
              let password = passwordTextField.text,
              let name = userNameTextField.text else {
            print("Por favor, preencha todos os campos.")
            return
        }
        viewController.viewModel.createUser(email: email, password: password, username: name)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let gradientLayer = self.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = self.bounds
        }
    }
    
    func configHierarchy() {
        addSubview(backButton)
        addSubview(title)
        addSubview(userNameLabel)
        addSubview(userNameTextField)
        addSubview(emailLabel)
        addSubview(emailLabelTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(signUpButton)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            title.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 40),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            userNameLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 30),
            userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 5),
            userNameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            userNameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            userNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            emailLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            emailLabelTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailLabelTextField.trailingAnchor.constraint(equalTo: userNameTextField.trailingAnchor),
            emailLabelTextField.leadingAnchor.constraint(equalTo: userNameTextField.leadingAnchor),
            emailLabelTextField.heightAnchor.constraint(equalTo: userNameTextField.heightAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailLabelTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.trailingAnchor.constraint(equalTo: userNameTextField.trailingAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: userNameTextField.leadingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: userNameTextField.heightAnchor),
            
            signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: userNameTextField.trailingAnchor),
            signUpButton.leadingAnchor.constraint(equalTo: userNameTextField.leadingAnchor),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    private func setupTapGesture() {
         let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
         self.addGestureRecognizer(tapGesture)
     }
     
     @objc private func dismissKeyboard() {
         self.endEditing(true)
     }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          textField.resignFirstResponder()
          return true
      }
}
