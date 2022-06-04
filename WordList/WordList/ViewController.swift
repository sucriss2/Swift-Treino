//
//  ViewController.swift
//  WordList
//
//  Created by Suh on 06/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var wordList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }

    func addText() {
        let name = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        print("PASSEI AQUIIII")
        
        if (name.isEmpty == false) {
            wordList.append(name)
            textField.text = ""
            tableView.reloadData()
            print("TEM ALGO \(wordList)")
        } else {
            let alert = UIAlertController(title: "ATENÇÃO", message: "Por favor digite algo", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            print("AAAAAALERTAAAAAA")
        }
    }

    @IBAction func buttonAdd(_ sender: UIButton) {
        addText()
        print("ADICIONADO")
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.detailTextLabel?.text = "\(wordList[row])"
        
        return cell
    }
}

