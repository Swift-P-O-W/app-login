//
//  RegisterView.swift
//  Login
//
//  Created by João Pedro Volponi on 12/09/24.
//

import Foundation
import UIKit

class RegisterView: UIView {
    private let viewController: RegisterViewController
    
    init(viewController: RegisterViewController) {
        self.viewController = viewController
        super.init(frame: .zero)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
