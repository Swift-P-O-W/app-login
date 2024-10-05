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
}

class HomeViewModel: HomeViewModelProtocol {
    var coordinator: LoginMainCoordinator
    
    init(coordinator: LoginMainCoordinator) {
        self.coordinator = coordinator
    }
}
