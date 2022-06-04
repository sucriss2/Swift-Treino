//
//  ViewController22.swift
//  tableView
//
//  Created by Suh on 05/04/22.
//

import UIKit

class ViewController22: UIViewController {
    
    let names = [
        "Adao",
        "eva",
        "Caim",
        "Abel",
        "Motorista",
        
    ]
    
    let animals: [[String]] = [
        ["Cachorro", "Lobo", "Raposa"],
        ["Gato","Leão", "Onça", "Jaguatirica"],
        ["Pato", "Ganso"]
    ]

    @IBOutlet weak var tableView22: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView22.dataSource = self

        // Do any additional setup after loading the view.
    }
    


    /*    let cell = UIListContentConfiguration
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController22: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print(" XXXXX ----- XXXXX")
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.textLabel?.text = "seção de numero \(section)."
        cell.detailTextLabel?.text = "\(names[row])."
        print("\(names[row])")
        cell.backgroundColor = UIColor.magenta
        
        return cell
    }
    
    
}
