//
//  PreferencesScreenViewController.swift
//  Offers A Plenty
//
//  Created by Jared Anderson on 7/30/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation
import UIKit

class PreferencesScreenViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var salary: UILabel!
    @IBOutlet weak var health: UILabel!
    override func viewDidLoad() {
        questionLabel.lineBreakMode = .byWordWrapping
        questionLabel.numberOfLines = 0
        questionLabel.adjustsFontSizeToFitWidth = true
    }
    @IBAction func locSliderChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        health.text = "\(value)"
    }
    @IBAction func salSliderChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        location.text = "\(value)"
    }
    @IBAction func healthSliderChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        salary.text = "\(value)"
    }
    @IBAction func nextClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "prefToMain", sender: self)
    }
    
    
}
