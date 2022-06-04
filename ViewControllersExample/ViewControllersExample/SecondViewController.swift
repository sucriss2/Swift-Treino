//
//  SecondViewController.swift
//  ViewControllersExample
//
//  Created by Suh on 14/04/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var internalText: String = ""
    var newText: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = internalText
        secondLabel.text = newText
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
