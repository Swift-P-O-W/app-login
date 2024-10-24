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
    func createUser(email: String, password: String, username: String)
    var coordinator: LoginMainCoordinator { get }
}

class RegisterViewModel: RegisterViewModelProtocol {
    
    var coordinator: LoginMainCoordinator
    var auth: Auth = Auth.auth()
    
    init(coordinator: LoginMainCoordinator) {
        self.coordinator = coordinator
    }
    
    func createUser(email: String, password: String, username: String) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Error ao cadastrar: \(error.localizedDescription)")
                print("Detalhes do erro: \(error)")
            } else if let user = result?.user {
                let changeRequest = user.createProfileChangeRequest()
                changeRequest.displayName = username
                changeRequest.commitChanges { error in
                    if let error = error {
                        print("Erro ao salvar o username: \(error.localizedDescription)")
                    } else {
                        print("Usuário cadastrado com sucesso e username salvo!")
                        self.coordinator.callLogin()
                    }
                }
            }
        }
    }
}
