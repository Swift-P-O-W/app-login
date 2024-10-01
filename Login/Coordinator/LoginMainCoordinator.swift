//
//  LoginMainCoordinator.swift
//  Login
//
//  Created by João Pedro Volponi on 01/10/24.
//

import Foundation
import UIKit

protocol LoginMainCoordinator {
    var navigationController: UINavigationController { get set}
    
    func callRegister()
}
