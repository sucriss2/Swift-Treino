//
//  LoginViewController.swift
//  Login
//
//  Created by Suh on 18/04/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var model = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.isEnabled = false
        userTextField.delegate = self
        passwordTextField.delegate = self
        model.delegate = self
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if model.validateForm(user: userTextField.text, password: passwordTextField.text) {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }        
        //loginButton.isEnabled = model.validateForm(user: userTextField.text, password: passwordTextField.text)
        
//        if userTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
//            loginButton.isEnabled = true
//        } else {
//            loginButton.isEnabled = false
//        }
        return true
    }
    
    func alert(message: String) {
        let alert = UIAlertController(title: "Atenção", message: message //"Usuário ou Senha errados. Por Favor tente novamente."//
            , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
     
    func showNextPage() {
        let welcomeStoryboard = UIStoryboard.init(name: "WelcomeStoryboard", bundle: nil)
        guard let welcomeViewController = welcomeStoryboard.instantiateViewController(withIdentifier: "welcome") as?  WelcomeViewController else {
            fatalError("View nao encontrada")
        }
        let model = WelcomeModel()
        welcomeViewController.model = model
        present(welcomeViewController, animated: true, completion: nil)
    }
    
    @IBAction func login(_ sender: UIButton) {
        model.user = userTextField.text ?? ""
        model.password = passwordTextField.text ?? ""
        model.login()
//        if model.login() {
//            showNextPage()
//        } else {
//            alert()
//        }
    }
}
    
extension LoginViewController: LoginModelDelegate {
    func loginModelDidSuccess() {
        showNextPage()
    }
    
    func loginModelDidFail(message: String) {
        alert(message: message)
    }
}
