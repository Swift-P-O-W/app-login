//
//  RegisterView.swift
//  Login
//
//  Created by João Pedro Volponi on 12/09/24.
//

import Foundation
import UIKit

class RegisterView: UIView {
    private let viewController: RegisterViewController
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign up" //TODO - ENUM
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    // MARK: - UserName
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Username" // TODO - ENUM
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.isSecureTextEntry = false
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        return textField
    }()
    
    // MARK: - E-mail
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email" // TODO - ENUM
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
    
    // MARK: - Password
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password" // TODO - ENUM
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.isSecureTextEntry = false
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        return textField
    }()
    
    lazy var subTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or Sign up with" //TODO - ENUM
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    init(viewController: RegisterViewController) {
        self.viewController = viewController
        super.init(frame: .zero)
        configBackGround()
        configHierarchy()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configBackGround() {
        backgroundColor = UIColor(named: "PurpleSecondary")
    }
    
    func configHierarchy() {
        addSubview(title)
        addSubview(userNameLabel)
        addSubview(userNameTextField)
        addSubview(emailLabel)
        addSubview(emailLabelTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(subTitle)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
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
            
            subTitle.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            subTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
