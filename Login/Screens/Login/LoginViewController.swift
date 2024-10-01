//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 11/09/24.
//

import UIKit

class LoginViewController: UIViewController {
    let viewModel: LoginViewModelProtocol
    var loginView: LoginView?

    init(viewModel: LoginViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        loginView = LoginView(viewController: self)
        self.view = self.loginView ?? UIView()
    }
}
