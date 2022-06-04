//
//  LoginModel.swift
//  Login2
//
//  Created by Suh on 22/04/22.
//

import Foundation

protocol LoginModelDelegate {
    func loginModelSuccess()
    func loginModelFail(message: String)
}

class LoginModel {
    private let expectedUser = "Su"
    private let expectedPassword = "123"
    
    var user: String
    var password: String
    var delegate: LoginModelDelegate?
    
    init(){
        user = ""
        password = ""
    }
    
    func login() {
        if user == expectedUser && password == expectedPassword {
            delegate?.loginModelSuccess()
        }
        delegate?.loginModelFail(message: "Erro de login. Confira seus dados e tente novamente.")
    }
    
    
}
