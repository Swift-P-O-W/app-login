//
//  RegisterViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 12/09/24.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    let viewModel: RegisterViewModelProtocol
    var registerView: RegisterView?
    
    init(viewModel: RegisterViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        registerView = RegisterView(viewController: self)
        self.view = self.registerView ?? UIView()
    }
}
