//
//  informationViewController.swift
//  preScrybe
//
//  Created by Eva on 7/29/20.
//  Copyright © 2020 Eva Tyagi. All rights reserved.
//

import UIKit

class informationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var genderOptions = ["female", "male", "non-binary", "prefer not to answer", "other"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genderOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genderOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderLabel.text = genderOptions[row]
    }
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       image.layer.masksToBounds = true
        image.layer.cornerRadius = image.bounds.width / 2
    }
    
}
