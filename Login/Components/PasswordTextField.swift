//
//  PasswordTextField.swift
//  Login
//
//  Created by João Pedro Volponi on 17/09/24.
//

import Foundation
import UIKit

class PasswordTextField: UIView {
    
    lazy var eyeButton: UIButton = {
        let eyeButton = UIButton(type: .custom)
        eyeButton.setImage(UIImage(named: "visibility"), for: .normal)
        eyeButton.setImage(UIImage(named: "visibility-off"), for: .selected)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        eyeButton.tintColor = .white
        eyeButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        return eyeButton
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 12
        textField.backgroundColor = UIColor(named: "PurplePrimary")
        textField.textColor = .white
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var rightPaddingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eyeButton)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(textField)
        textField.rightView = rightPaddingView
    }
    @objc private func togglePasswordVisibility(_ sender: UIButton) {
        sender.isSelected.toggle()
        textField.isSecureTextEntry.toggle()
    }
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: topAnchor),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor),
            textField.heightAnchor.constraint(equalToConstant: 40),
            
            rightPaddingView.widthAnchor.constraint(equalToConstant: 50),
            rightPaddingView.heightAnchor.constraint(equalToConstant: 40),
            
            eyeButton.centerYAnchor.constraint(equalTo: rightPaddingView.centerYAnchor),
            eyeButton.trailingAnchor.constraint(equalTo: rightPaddingView.trailingAnchor, constant: -10),
            eyeButton.widthAnchor.constraint(equalToConstant: 30),
            eyeButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
