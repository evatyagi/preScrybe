//
//  SlideRDA.swift
//  todo
//
//  Created by Maria Cheriyan on 7/30/20.
//  Copyright © 2020 Maria Cheriyan. All rights reserved.
//

import UIKit

class SlideRDA: UIViewController {

    var rda2 : [RDAcd] = []

    func RDAs() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            if let coreDataRDAs = try? context.fetch(RDAcd.fetchRequest()) as? [RDAcd] {
                       rda2 = coreDataRDAs
                }
      }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()

    }
        
    @IBOutlet weak var showProtRDA: UILabel!
    
    @IBOutlet weak var showProtAmt: UILabel!
    
    @IBAction func slideProt(_ sender: UISlider) {
        for a in rda2 {
            showProtAmt.text = String(round(sender.value * a.weight * 0.36)) + "g"
            showProtRDA.text = String(round(a.weight * 0.36)) + "g"
    
    }
    }
    
    
    @IBOutlet weak var showFibRDA: UILabel!
    
    @IBOutlet weak var showFibAmt: UILabel!
    
    @IBAction func slideFib(_ sender: UISlider) {
        for a in rda2 {
        showFibAmt.text = String(round(sender.value * 31)) + "g"
        showFibRDA.text = "31g"
    }
    }
    
    @IBOutlet weak var showFatRDA: UILabel!
    
    @IBOutlet weak var showFatAmt: UILabel!
    @IBAction func slideFat(_ sender: UISlider) {
        for a in rda2 {
                let calorie = (655.1 + 9.6*(a.weight) + 1.9*(a.height) - 4.7*30) * 1.2
                showFatAmt.text = String(round(sender.value * a.weight * 0.36)) + "g"
                showFatRDA.text = String(round(calorie*0.30/9)) + "g"
        
        }
    }

    
    
    @IBOutlet weak var showCarbRDA: UILabel!
    
    @IBOutlet weak var showCarbAmt: UILabel!
    
    @IBAction func slideCarb(_ sender: UISlider) {
        for a in rda2 {
                let calorie = (655.1 + 9.6*(a.weight) + 1.9*(a.height) - 4.7*30) * 1.2
                showCarbAmt.text = String(round(sender.value * calorie*0.55/4)) + "g"
                showCarbRDA.text = String(round(calorie*0.55/4)) + "g"
        
        }
        
    }
    
    @IBOutlet weak var showWater: UILabel!
    
    @IBOutlet weak var showWaterAmt: UILabel!
    @IBAction func slideWater(_ sender: UISlider) {
        for a in rda2 {
        showWaterAmt.text = String(round(sender.value * a.weight / 8)) + " 8-oz glasses"
        showWater.text = String(round(a.weight / 8 )) + " 8-oz glasses"
    }
    }
    


    override func viewWillAppear(_ animated: Bool) {
      RDAs()
    }
    
    
    @IBAction func protClick(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.google.com/search?q=foods+high+in+protein&rlz=1C5CHFA_enUS907US907&oq=foods+high+in+protein&aqs=chrome.0.0l8.2129j0j7&sourceid=chrome&ie=UTF-8" )! as URL, options: [:], completionHandler: nil)
    }
    
        // Do any additional setup after loading the view.
    //}
    

    @IBAction func fibClick(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.google.com/search?rlz=1C5CHFA_enUS907US907&sxsrf=ALeKk026SjOzaPmQgJaXi_YxvcWRt4Gc2A%3A1596164790927&ei=toojX-KWOM30swX-oZ2oCA&q=foods+high+in+fiber&oq=foods+high+in+fiber&gs_lcp=CgZwc3ktYWIQAzICCAAyBwgAEBQQhwIyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADoHCAAQRxCwA1DdkgRYupYEYJeXBGgAcAB4AIABiwGIAewEkgEDMS41mAEAoAEBqgEHZ3dzLXdpesABAQ&sclient=psy-ab&ved=0ahUKEwjiyfaawfbqAhVN-qwKHf5QB4UQ4dUDCAw&uact=5" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func fatClick(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.google.com/search?q=healthy+foods+high+in+fat&rlz=1C5CHFA_enUS907US907&oq=health+foods+hig&aqs=chrome.1.69i57j0l7.5484j0j9&sourceid=chrome&ie=UTF-8" )! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func carbClick(_ sender: Any) {
           UIApplication.shared.open(URL(string:"https://www.google.com/search?q=healthy+foods+high+in+carbs&rlz=1C5CHFA_enUS907US907&oq=healthy+foods+hig&aqs=chrome.0.69i59l2j69i57j0l5.1871j0j9&sourceid=chrome&ie=UTF-8" )! as URL, options: [:], completionHandler: nil)
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
