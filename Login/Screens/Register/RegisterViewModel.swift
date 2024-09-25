//
//  RegisterViewModel.swift
//  Login
//
//  Created by João Pedro Volponi on 12/09/24.
//

import Foundation
import Firebase
import UIKit

protocol RegisterViewModelProtocol {
    func createUser(email: String, password: String)
}

class RegisterViewModel: RegisterViewModelProtocol {
    
    var auth: Auth = Auth.auth()
    
    func createUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Error ao cadastrar: \(error.localizedDescription)")
                print("Detalhes do erro: \(error)")
            } else {
                print("Sucesso")
            }
        }
    }
}
