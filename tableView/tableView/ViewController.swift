//
//  ViewController.swift
//  tableView
//
//  Created by Suh on 05/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        print("Passei seção")
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Passei linhas por seção \(section)")
        return section + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row =  indexPath.row
        let section = indexPath.section
        print("Passei celula \(section) - \(row).")
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.textLabel?.text = "Seção: \(section)."
        cell.detailTextLabel?.text = "Linha: \(row)."
        return cell
    }
    
}
