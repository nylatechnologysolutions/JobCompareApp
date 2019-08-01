//
//  HomeScreenViewController.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 7/22/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToRegister", sender: self)
    }
}
