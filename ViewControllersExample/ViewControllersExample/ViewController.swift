//
//  ViewController.swift
//  ViewControllersExample
//
//  Created by Suh on 14/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: UIButton) {
        //1. Pegar o Storyboard (SecondStoryboard)
        let secondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        
        //2. Pegar a SecondViewController que está dentro da secondstoryboar
        //2.1 Será necessário identificar a ViewController pela propriedade Storyboard ID
        //let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondScreen")
        
        //2.2 (Opcional, porem sempre obrigarótio) - Preciso converter o UIViewController retornado para o tipo desejado
        guard let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondScreen") as? SecondViewController else {
            fatalError("O View controller na ofoi encontrado")
        }
        
        //2.3 (opcional) Configurar a viewController instanciada
        secondViewController.internalText = "Suh"
        secondViewController.newText = textoTextField.text ?? ""
        

        //3. Apresentar a view Controller capturada
        present(secondViewController, animated: true, completion: nil)
    }
    
}

