//
//  resourcesViewController.swift
//  preScrybe
//
//  Created by Mariam Ayesh on 7/30/20.
//  Copyright © 2020 Eva Tyagi. All rights reserved.
//

import UIKit

class resourcesViewController: UIViewController {

    
    @IBOutlet var popButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        popButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func popTapped(_ sender: UIButton) {
    }
    
}
