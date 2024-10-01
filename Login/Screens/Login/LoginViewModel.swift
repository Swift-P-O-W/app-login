//
//  LoginViewModel.swift
//  Login
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 21/09/24.
//

import Foundation
import UIKit

protocol LoginViewModelProtocol {
    var coordinator: LoginMainCoordinator { get }
}

class LoginViewModel: LoginViewModelProtocol {
    var coordinator: LoginMainCoordinator
    
    init(coordinator: LoginMainCoordinator) {
        self.coordinator = coordinator
    }
}
