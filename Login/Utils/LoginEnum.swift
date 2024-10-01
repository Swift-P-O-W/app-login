//
//  LoginEnum.swift
//  Login
//
//  Created by João Pedro Volponi on 13/09/24.
//

import Foundation

public enum LoginEnum {
    
    enum Register {
        static let title = "Sign up"
        static let username = "Username"
        static let email = "Email"
        static let password = "Password"
    }
    
    enum Colors {
        static let purplePrimary = "#52396D"
        static let purpleSecondary = "#3A215D"
    }
    
    enum Login {
        static let title = "Log in"
        static let dontHaveAccount = "don't have an account"
    }
}
