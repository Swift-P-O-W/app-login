//
//  HomeViewModel.swift
//  Login
//
//  Created by João Pedro Volponi on 01/10/24.
//

import Foundation
import UIKit

protocol HomeViewModelProtocol {
    var coordinator: LoginMainCoordinator { get }
    var userName: String { get }
}

class HomeViewModel: HomeViewModelProtocol {
    var coordinator: LoginMainCoordinator
    var userName: String
    
    init(coordinator: LoginMainCoordinator, userName: String) {
        self.coordinator = coordinator
        self.userName = userName
    }
}
