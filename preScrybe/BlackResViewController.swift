//
//  BlackResViewController.swift
//  preScrybe Resources
//
//  Created by Mariam on 7/28/20.
//  Copyright © 2020 Mariam A. All rights reserved.
//

import Foundation
import UIKit

class BlackResViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func linkOneButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.everydayhealth.com/type-2-diabetes/diet/diabetes-african-americans-how-lower-your-risk/")! as URL, options: [:], completionHandler: nil)
    }


    @IBAction func linkTwoButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.t1international.com/blog/2020/06/15/my-black-diabetic-life-matters/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func LinkThreeButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://insulinhelp.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func linkFourButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.diabetes.org/african-american-programs")! as URL, options: [:], completionHandler: nil)
    }
}


