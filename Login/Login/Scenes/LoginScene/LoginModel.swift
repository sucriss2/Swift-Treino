//
//  LoginModel.swift
//  Login
//
//  Created by Suh on 19/04/22.
//

import Foundation

protocol LoginModelDelegate: AnyObject {
    func loginModelDidSuccess()
    func loginModelDidFail(message: String)
}

class LoginModel {
    private let expectedUser = "Suh"
    private let expectedPassword = "1234"

    var user: String
    var password: String
    var delegate: LoginModelDelegate?
    
    init(){
        user = ""
        password = ""
    }
    
    func login() {
        if user == expectedUser && password == expectedPassword {
            delegate?.loginModelDidSuccess()
        }
        delegate?.loginModelDidFail(message: "Falha ao executar login")
    }
//    func login() -> Bool {
//        if user == expectedUser && password == expectedPassword {
//            return true
//        }
//        return false
//
//        //return user == expectedUser && password == expectedPassword
//    }
    
    func validateForm(user: String?, password: String?) -> Bool {
        if user?.isEmpty == false && password?.isEmpty == false {
            return true
        }
        return false
    }
}

