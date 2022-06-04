//
//  ViewController.swift
//  Login2
//
//  Created by Suh on 21/04/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
//    var user = "Su"
//    var password = "123"
    var model = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.isEnabled = false
        userTextField.delegate = self
        passwordTextField.delegate = self
        model.delegate = self
    }
    
    func alert(message: String){
        let alert = UIAlertController(title: "Atenção!!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if userTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
            loginButton.isEnabled = true
        }
    }
    
    func goNextPage() {
        let welcomestoryboard = UIStoryboard.init(name: "WelcomeStoryboard", bundle: nil)
        guard let welcomeVc = welcomestoryboard.instantiateViewController(withIdentifier: WelcomeViewController.identifier) as? WelcomeViewController else {
            fatalError()
        }
        let user = WelcomeModel()
        welcomeVc.user = user
        present(welcomeVc, animated: true, completion: nil)
    }

    @IBAction func login(_ sender: UIButton) {
        model.user = userTextField.text ?? ""
        model.password = passwordTextField.text ?? ""
        model.login()
    }
        
}

extension LoginViewController: LoginModelDelegate {
    func loginModelSuccess() {
        goNextPage()
    }
    func loginModelFail(message: String) {
        alert(message: message)
    }
}
