//
//  WelcomeViewController.swift
//  Login
//
//  Created by Suh on 18/04/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var imageWelcome: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var city: UILabel!
    
    var model: WelcomeModel?
    let placeholder = UIImage(named: "user_placeholder")
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageWelcome.image = model?.avatar ?? placeholder
        imageWelcome.layer.cornerRadius = imageWelcome.frame.size.height/2
//        name.text = model?.name
//        age.text = model?.age
//        city.text = model?.city
        model?.delegate = self          // DI
        model?.getUser()
    }
    
    deinit {
        print("PAssei por aqui!!!")
    }
}

extension WelcomeViewController: WelcomeModelDelegate {
    func welcomeModelDidSend(user: User) {
        imageWelcome.image = user.image
        name.text = user.name
        age.text = user.age
        city.text = user.city
        print(user)
    }
}
