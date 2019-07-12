//
//  Benefits.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation

class Benefits {
    var leave: String
    var pay: String
    var signing: Double
    var performance: String
    var awards: String
    var FO1K: Bool
    var training: Bool
    var bonuses: String
    
    init(_ lv: String, _ py: String, _ sn: Double, _ pf: String, _ ad: String, _ f: Bool, _ tg: Bool, _ bs: String) {
        leave = lv
        pay = py
        signing = sn
        performance = pf
        awards = ad
        FO1K = f
        training = tg
        bonuses = bs
    }
    init(){
        leave = ""
        pay = ""
        signing = 0.0
        performance = ""
        awards = ""
        FO1K = false
        training = false
        bonuses = ""
    }
}
