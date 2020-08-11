//
//  ToDoListTabelViewController.swift
//  toDoListProject
//
//  Created by Karina on 8/11/20.
//  Copyright © 2020 Karina Makhani. All rights reserved.
//

import UIKit

class ToDoListTabelViewController: UITableViewController {

    var listOfToDo : [ToDoClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo ()
    }

    func createToDo () -> [ToDoClass] {
        let swiftToDo = ToDoClass ()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass ()
        dogToDo.description = "Walk the Dog"
        //important is set to false by default
        
        return [swiftToDo, dogToDo]
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo [indexPath.row]
        
        if eachToDo.important {
            cell.textLabel?.text = "❗️" + eachToDo.description
        } else {
        cell.textLabel?.text = eachToDo.description
        }

        // Configure the cell...

        return cell
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
