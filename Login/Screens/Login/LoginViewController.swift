//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 11/09/24.
//

import UIKit

class LoginViewController: UIViewController {
    var viewModel: LoginViewModelProtocol
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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }
}
