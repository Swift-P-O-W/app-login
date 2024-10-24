//
//  Coordinator.swift
//  Login
//
//  Created by João Pedro Volponi on 01/10/24.
//

import Foundation
import UIKit

public class LoginCoordinator: LoginMainCoordinator {
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func callLogin() {
        let viewModel = LoginViewModel(coordinator: self)
        let viewController = LoginViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func callRegister() {
        let viewModel = RegisterViewModel(coordinator: self)
        let viewController = RegisterViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func callHome(withUserName name: String) {
        let viewModel = HomeViewModel(coordinator: self, userName: name)
        let viewController = HomeViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
