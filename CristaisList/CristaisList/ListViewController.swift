//
//  ViewController.swift
//  CristaisList
//
//  Created by Suh on 06/04/22.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
     
    var crystals: [Crystal] = [
        Crystal(name: "Ágata",color: "Mult-color", funcion: "Equilibrio da aura", element: "Terra", chakra: "Laríngeo"),
        Crystal(name: "Água-marinha",color: "azul", funcion: "Expressão", element: "Água", chakra: "Laríngeo e Cardiaco"),
        Crystal(name: "Amazonita",color: "verde-água", funcion: "comunicacao e saude hormonal", element: "Terra", chakra: "Cardiaco/Laríngeo"),
        Crystal(name: "Ametista",color: "Violeta", funcion: "Paz e transmutação", element: "Água", chakra: "Frontal"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func showAddCrystal(_ sender: UIButton) {
        guard let storyboard = self.storyboard else {
            return
        }
        guard let addCrystalViewController = storyboard.instantiateViewController(withIdentifier: "AddCrystal") as? AddCrystalViewController else {
            return
        }
        addCrystalViewController.delegate = self
        //self.present(viewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(addCrystalViewController, animated: true)
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crystals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        cell.textLabel?.text = "\(crystals[row].name)"
        cell.detailTextLabel?.text = "\(crystals[row].element)"
        cell.detailTextLabel?.textColor = UIColor(named: "black")
        
        return cell
    }
}

extension ListViewController: AddCrystalViewControllerDelegate {
    func didCreateCrystal(crystal: Crystal) {
        crystals.append(crystal)
        tableView.reloadData()
        print(crystal)
    }
}
