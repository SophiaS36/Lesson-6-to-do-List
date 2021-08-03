//
//  AddViewController.swift
//  Lesson 6 to-do List
//
//  Created by Sophia Spooner on 8/3/21.
//

import UIKit

class AddViewController: UIViewController {

    var previousViewController = ToDOTableTableViewController()
    
    @IBOutlet weak var titleTextFeild: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AddButton(_ sender: UIButton) {
        let toDo = ToDo()
      
        // if let titleText = titleTextFeild.text
        if titleTextFeild.text != nil {
            toDo.name = titleTextFeild.text!
            toDo.important = importantSwitch.isOn
        }
            previousViewController.toDos.append(toDo)
        previousViewController.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
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
