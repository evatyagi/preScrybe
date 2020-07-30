//
//  AddToDoViewController.swift
//  todo
//
//  Created by Maria Cheriyan on 7/27/20.
//  Copyright © 2020 Maria Cheriyan. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    var previousVC = todoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!

    @IBOutlet weak var datePick: UIDatePicker!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var pick1: UIPickerView!
    
    let pickerData = ["Exercise","Medicine","Water"]
    var indx = 0

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerData[row] == "Exercise" {
            indx = 1
        }
        else if pickerData[row] == "Medicine" {
            indx = 2
        }
        else if pickerData[row] == "Water" {
            indx = 3
        }
            
        print(indx)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

          // we are creating a new ToDoCD object here, naming it toDo
          let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

          // if the titleTextField has text, we will call that text titleText
          if let titleText = titleTextField.text {
              // we will take the titleText and assign that value to toDo.name
              // this .name and .important came from the attributes you typed in on the Core Data page!
              toDo.name = titleText
              toDo.important = importantSwitch.isOn
              toDo.category = Int64(indx)
              toDo.date = datePick.date
          }
        

          try? context.save()

          navigationController?.popViewController(animated: true)
        }
        
        /*let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)*/
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
