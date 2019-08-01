//
//  LoginScreenViewController.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 7/22/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation
import UIKit

class LoginScreenViewController: UIViewController {
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "logToHome", sender: self)
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "logToPref", sender: self)
    }
}
