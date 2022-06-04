//
//  ViewController.swift
//  ViewControllersExemple2
//
//  Created by Suh on 14/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func okButton(_ sender: UIButton) {
        let secondStoryboard = UIStoryboard.init(name: "SecondStoryboard", bundle: nil)
        guard let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondView") as? SecondViewController else {
            fatalError("View nao encontrada")
        }
        
        let user = Info(
            name: nameTextField.text ?? "",
            phone: phoneTextField.text ?? "",
            age: ageTextField.text ?? "",
            weight: weightTextField.text ?? "", height: heightTextField.text ?? "")
        secondViewController.user = user
//        secondViewController.name = nameTextField.text ?? ""
//        secondViewController.phone = phoneTextField.text ?? ""
//        secondViewController.age = ageTextField.text ?? ""
        
        present(secondViewController, animated: true, completion: nil)
        
        
    }
    
}

