//
//  LoginViewModel.swift
//  Login
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 21/09/24.
//

import Foundation
import UIKit
import Firebase

protocol LoginViewModelProtocol {
    var coordinator: LoginMainCoordinator { get }
    var onLoginSuccess: (() -> Void)? { get set }
    func signInUser(email: String, password: String)
}

class LoginViewModel: LoginViewModelProtocol {
    
    var coordinator: LoginMainCoordinator
    var auth: Auth = Auth.auth()
    
    init(coordinator: LoginMainCoordinator) {
        self.coordinator = coordinator
    }
    
    var onLoginSuccess: (() -> Void)?
    
    func signInUser(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                let name = authResult?.user.displayName ?? "username"
                self.coordinator.callHome(withUserName: name)
                
                self.onLoginSuccess?()
            } else {
                print("Error login, error: \(error?.localizedDescription ?? "")")
            }
        }
    }
    
}
