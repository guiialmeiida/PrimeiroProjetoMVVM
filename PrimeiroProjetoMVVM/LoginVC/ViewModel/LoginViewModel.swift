//
//  LoginViewModel.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 31/07/23.
//

import UIKit
import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func successLogin()
    func errorLogin(errorMessage: String)
}

class LoginViewModel {
    
    private weak var delegate: LoginViewModelProtocol?
    
    public func delegate(delegate: LoginViewModelProtocol?) {
        self.delegate = delegate
    }
    
    private var auth = Auth.auth()
    
    public func login(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso login")
                self.delegate?.successLogin()
            } else {
                print("Error login, error \(error?.localizedDescription ?? "")")
                self.delegate?.errorLogin(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }

    public func registerUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso cadastro")
            } else {
                print("Error cadastro, error \(error?.localizedDescription ?? "")")
            }
        }
    }
}
