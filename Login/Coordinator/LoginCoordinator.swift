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
    
    func callRegister() {
        let viewModel = RegisterViewModel()
        let viewController = RegisterViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func callHome() {
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
