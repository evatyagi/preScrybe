//
//  latinViewController.swift
//  preScrybe Resources
//
//  Created by Mariam on 7/29/20.
//  Copyright © 2020 Mariam A. All rights reserved.
//

import Foundation
import UIKit

class latinViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func firstLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.highmarkhealth.org/blog/care/Latinos-and-Diabetes-My-Story.shtml")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func secondLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.diabeteseducator.org/news/perspectives/aade-blog-details/adces-perspectives-on-diabetes-care/2018/10/05/5-tips-for-hispanic-latino-people-with-diabetes-who-are-new-to-the-u.s")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func thirdLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://insulinhelp.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func fourthLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.cdc.gov/diabetes/ndep/toolkits/more-than-food.html")! as URL, options: [:], completionHandler: nil)
    }
    
    
}
