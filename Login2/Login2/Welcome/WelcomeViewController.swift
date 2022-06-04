//
//  WelcomeViewController.swift
//  Login2
//
//  Created by Suh on 21/04/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var avatarWelcome: UIImageView!
    @IBOutlet weak var nameWelcome: UILabel!
    @IBOutlet weak var ageWelcome: UILabel!
    @IBOutlet weak var cityWelcome: UILabel!
    
    static let identifier = "WelcomeViewController"
    
    var placeholder = UIImage(named: "user_placeholder.pgn")
    var user: WelcomeModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarWelcome.layer.cornerRadius = avatarWelcome.frame.size.height/2
        //avatarWelcome.image = placeholder
        user?.delegate = self
        user?.getUser()
    }

}

extension WelcomeViewController: WelcomeModelDelegate {
    func welcomemodelDidUser(user: User) {
        avatarWelcome.image = user.avatar
        nameWelcome.text = user.name
        ageWelcome.text = user.age
        cityWelcome.text = user.city
        print(user)
    }
}
