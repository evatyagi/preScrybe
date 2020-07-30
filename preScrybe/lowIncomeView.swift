//
//  lowIncomeView.swift
//  preScrybe Resources
//
//  Created by Mariam on 7/29/20.
//  Copyright © 2020 Mariam A. All rights reserved.
//

import Foundation
import UIKit

class lowIncomeView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func lowIncomeLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.newyorker.com/news/as-told-to/living-with-type-1-diabetes-when-you-cant-afford-insulin")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func lowIncomeLink2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.healthline.com/diabetesmine/insulin-access-deaths#4")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func lowIncomeLink3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://insulinhelp.org")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func lowIncomeLink4(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.jdrf.org/austin/wp-content/uploads/sites/3/2013/02/Financial_Info_2012.pdf")! as URL, options: [:], completionHandler: nil)
    }
    
}
