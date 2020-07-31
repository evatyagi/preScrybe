//
//  AddRDA.swift
//  todo
//
//  Created by Maria Cheriyan on 7/30/20.
//  Copyright © 2020 Maria Cheriyan. All rights reserved.
//

import UIKit

class AddRDA: UIViewController {

    
    
    
    @IBOutlet weak var addWeight: UITextField!
    
    @IBOutlet weak var addHeight: UITextField!
    
    @IBOutlet weak var addProtein: UILabel!
    @IBOutlet weak var addFiber: UILabel!
    @IBOutlet weak var addFat: UILabel!
    @IBOutlet weak var addCarb: UILabel!
    @IBOutlet weak var addWater: UILabel!

    @IBAction func calcRDA(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

          let rda = RDAcd(entity: RDAcd.entity(), insertInto: context)

          if let weightText = addWeight.text {
            rda.weight = Float(weightText)!
          }
            if let heightText = addHeight.text {
                rda.height = Float(heightText)!
            }
            
          try? context.save()
          
            let calorie = (655.1 + 9.6*(rda.weight) + 1.9*(rda.height) - 4.7*30)*1.2
            addProtein.text = String(round(rda.weight*0.36)) + "g"
            addFiber.text = "31g"
            addFat.text = String(round(calorie*0.30/9)) + "g"
            addCarb.text = String(round(calorie*0.55/4)) + "g"
            addWater.text = String(round(rda.weight)) + "oz"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
