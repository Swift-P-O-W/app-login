//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 11/09/24.
//

import UIKit

import UIKit

class LoginViewController: UIViewController {
    let button = UIButton(type: .system) // Botão
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configuração do botão
        button.setTitle("Ir para Registro", for: .normal)
        button.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.center = view.center
        view.addSubview(button) // Adiciona o botão à view
    }
    
    // Função chamada ao tocar no botão
    @objc func navigateToRegister() {
        let viewModel = RegisterViewModel() // Supondo que você tenha um ViewModel
        let registerVC = RegisterViewController(viewModel: viewModel)
        navigationController?.pushViewController(registerVC, animated: true) // Navegação para a RegisterViewController
    }
}
