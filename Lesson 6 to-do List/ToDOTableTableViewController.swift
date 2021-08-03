//
//  ToDOTableTableViewController.swift
//  Lesson 6 to-do List
//
//  Created by Sophia Spooner on 8/3/21.
//

import UIKit

class ToDOTableTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let read = ToDo()
        read.name = "Read a Book!"
        // read.important = false dont have to include if it is false because it was already set
        
        let kitchen = ToDo()
        kitchen.name = "Clean Kitchen"
        kitchen.important = true
        
        return [swift, read, kitchen]
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
    
    // In a storyboard-based application, you eill often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addViewcontroller = segue.destination as? AddViewController {
            addViewcontroller.previousViewController = self
        }
    }
    

}
