//
//  WelcomeModel.swift
//  Login2
//
//  Created by Suh on 21/04/22.
//

import Foundation
import UIKit

protocol WelcomeModelDelegate {
    func welcomemodelDidUser(user: User)
}

class WelcomeModel {
    private var user = User(avatar: nil, name: "", age: "", city: "")
    
    init() {
    }
    
    var delegate: WelcomeModelDelegate?
    
    func getUser() {
        let user = User(avatar: UIImage(named: "user_woman.png"), name: "Suelen Cristina Vaz", age: "33 anos", city: "Barreiras-Ba")
        self.user = user
        delegate?.welcomemodelDidUser(user: user)
    }
    
}
