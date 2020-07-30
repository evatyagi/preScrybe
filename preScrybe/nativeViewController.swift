//
//  nativeViewController.swift
//  preScrybe Resources
//
//  Created by Mariam on 7/29/20.
//  Copyright © 2020 Mariam A. All rights reserved.
//

import Foundation
import UIKit

class nativeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func firstLinkNative(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.healthline.com/diabetesmine/native-americans-diabetes-no-enemy#1")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func secondLinkNative(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://sweetbloods.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func thirdLinkNative(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://insulinhelp.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func fourthLinkView(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.cdc.gov/diabetes/ndwp/index.html")! as URL, options: [:], completionHandler: nil)    }
    
}
