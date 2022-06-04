//
//  SecondViewController.swift
//  ViewControllersExemple2
//
//  Created by Suh on 14/04/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var user: Info?    
//    var name: String?
//    var phone: String?
//    var age: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user?.name
        phoneLabel.text = user?.phone
        ageLabel.text = user?.age
        weightLabel.text = user?.weight
        heightLabel.text = user?.height
//        nameLabel.text = name
//        phoneLabel.text = phone
//        ageLabel.text = age
    }

}

