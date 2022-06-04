//
//  WelcomeModel.swift
//  Login
//
//  Created by Suh on 19/04/22.
//

import Foundation
import UIKit

protocol WelcomeModelDelegate: AnyObject {
    func welcomeModelDidSend(user: User)
}

class WelcomeModel {
    private var user = User(image: nil, name: "", age: "", city: "")
//    var avatar: UIImage? {
//        return user.image
//    }
//    var name: String {
//        return user.name
//    }
//    var age: String {
//        return user.age
//    }
//    var city: String {
//        return user.city
//    }
    weak var delegate: WelcomeModelDelegate?
    
    init(){
    }
    
    func getUser() {
        let user = User(image: UIImage(named: "user_woman.png"), name: "Suelen Cristina", age: "33", city: "Barreiras")
        self.user = user
        delegate?.welcomeModelDidSend(user: user)
    }
    
}
