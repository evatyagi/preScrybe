//
//  todoTableViewController.swift
//  todo
//
//  Created by Maria Cheriyan on 7/27/20.
//  Copyright © 2020 Maria Cheriyan. All rights reserved.
//

import UIKit

class todoTableViewController: UITableViewController {
    
    let formatter3 = DateFormatter()
    func makeFormat(date1 : Date) -> String{
        formatter3.dateFormat = "HH:mm E, d MMM y"
        return formatter3.string(from: date1)
    }
    
    
    var toDos : [ToDoCD] = []
    //var imageName = ""
    var image : UIImage = UIImage(named: "blank")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //toDos = createToDos()
    }

    override func viewWillAppear(_ animated: Bool) {
      getToDos()
    }
    
    // MARK: - Table view data source

   
    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    func getToDos(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                       toDos = coreDataToDos
                       tableView.reloadData()
               }
        }
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return toDos.count
       }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

           // Configure the cell...
        let toDo = toDos[indexPath.row]
        if let name = toDo.name{
            if toDo.important {
                cell.textLabel?.text = "❗️" + name + " | " + makeFormat(date1: toDo.date!)
                print(makeFormat(date1: toDo.date!))
                
         } else {
                cell.textLabel?.text = name + " | " + makeFormat(date1: toDo.date!)
            
            }
            
            if toDo.category == 1 {
                image = UIImage(named: "run")!
                
            }
            else if toDo.category == 2 {
                image = UIImage(named: "pill")!
            }
            else if toDo.category == 3 {
                image = UIImage(named: "water")!
            }
            
                  }
                        
                    //var image : UIImage = UIImage(named: "water")!
                      //     print("The loaded image: \(image)")
                    cell.imageView?.image = image
                     return cell
                 }
            
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "movetoComplete", sender: toDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
        }
       if let completeVC = segue.destination as? CompleteToDoViewController {
          if let toDo = sender as? ToDoCD {
            completeVC.selectedToDo = toDo
            completeVC.previousVC = self
          }
        }
    }
    

}
