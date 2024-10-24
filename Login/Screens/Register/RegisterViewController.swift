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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func backButtonAction() {
        self.navigationController?.popViewController(animated: true)
    }
}
