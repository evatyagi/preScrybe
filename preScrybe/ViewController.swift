//
//  ViewController.swift
//  preScrybe
//
//  Created by Eva on 7/28/20.
//  Copyright © 2020 Eva Tyagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var prescrybeLogo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        prescrybeLogo.layer.masksToBounds = true
          prescrybeLogo.layer.cornerRadius = prescrybeLogo.bounds.width / 2
        
    }
    

}

