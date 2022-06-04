//
//  ViewController33.swift
//  tableView
//
//  Created by Suh on 05/04/22.
//

import UIKit

class ViewController33: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    let animals: [[String]] = [
        ["Cachorro", "Lobo", "Raposa"],
        ["Gato","Leão", "Onça", "Jaguatirica"],
        ["Pato", "Ganso", "Cisne"],
        ["Canguru", "Gambá"]
    ]
    
    var flatAnimals : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //print("\(animals[1][1])")
        
        flatAnimals = animals.flatMap { $0 }
        
        dump(flatAnimals)
        print("")
        dump(animals)
    }

}

extension ViewController33: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        //return animals.count
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //let animal = animals[section]
        //print("\(animal.count)")
        //return animals[section].count
        
        return flatAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
        //let animal = animals[section].count
        //print("\(animals[row])")
        
        //let animal = animals[section]
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        //cell.textLabel?.text = "Seção \(animals[section]) -  \(animals[indexPath.section][indexPath.row])"
        //cell.textLabel?.text = "\(animals[section][row])"
        cell.textLabel?.text = "\(flatAnimals[row])"
        //cell.detailTextLabel?.text = " \(animals[section][row])"
        //cell.detailTextLabel?.text = " \(animal[row])"
        cell.textLabel?.textColor = UIColor.purple
        cell.detailTextLabel?.textColor = .green

        return cell
    }
    
}
