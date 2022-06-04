//
//  Tela2ViewController.swift
//  CristaisList
//
//  Created by Suh on 06/04/22.
//

import UIKit

protocol AddCrystalViewControllerDelegate: AnyObject {
    func didCreateCrystal(crystal: Crystal)
}

class AddCrystalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfColor: UITextField!
    @IBOutlet weak var tfFuncion: UITextField!
    @IBOutlet weak var tfElement: UITextField!
    @IBOutlet weak var tfChakra: UITextField!
    
    weak var delegate: AddCrystalViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfColor.delegate = self
        tfFuncion.delegate = self
        tfElement.delegate = self
        tfChakra.delegate = self
    }
    
    func alert(message: String) {  //alerta para editar o campo sem edicao.
        let alert = UIAlertController(title: "ALERTA", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) { //defini a cor assim que selecionado.
//        tfName.backgroundColor = .white
//        tfColor.backgroundColor = .white
//        tfFuncion.backgroundColor = .white
//        tfElement.backgroundColor = .white
//        tfChakra.backgroundColor = .white
        textField.backgroundColor = .lightGray
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = .white //definir a cor da texField assim que acaba a edição no textField.
    }
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        return textField.text?.isEmpty == false  // se o textField não estiver vazio ou for nulo,continua a edicao no proximo
//    }
    
    func addCrystal() { // antes de adicionar os campos, verificar se é valido o texto da textField
        guard let name = tfName.text, name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false else {
            alert(message: "Por favor preencha o campo de NOME")
            return
        }
        guard let color = tfColor.text, color.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false else {
            alert(message: "Por favor preencha o campo de COR")
            return
        }
        guard let elemento = tfElement.text, elemento.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false else {
            alert(message: "Por favor preencha o campo de ELEMENTO")
            return
        }
        guard let funcao = tfColor.text, funcao.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false else {
            alert(message: "Por favor preencha o campo de FUNÇÃO")
            return
        }
        guard let chakra = tfChakra.text, chakra.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false else {
            alert(message: "Por favor preencha o campo de CHAKRA")
            return
        }
        
        let crystal = Crystal(name: name, color: color, funcion: funcao, element: elemento, chakra: chakra)
        delegate?.didCreateCrystal(crystal: crystal)
        self.navigationController?.popViewController(animated: true) //retorno de tela lateral
    }
        
    @IBAction func createCrystal(_ sender: UIButton) {
        addCrystal()
    }
    
}

