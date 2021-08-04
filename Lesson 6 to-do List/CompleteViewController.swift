//
//  CompleteViewController.swift
//  Lesson 6 to-do List
//
//  Created by Sophia Spooner on 8/3/21.
//

import UIKit
// Comment HERE now
class CompleteViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    var previousViewController = ToDOTableTableViewController()
    var selctorTodo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selctorTodo.name
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
