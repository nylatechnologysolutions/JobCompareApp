//
//  Benefits.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation

class Benefits {
    var leave: Int
    var pay: String
    var signing: Double
    var performance: String
    var awards: Double
    var FO1K: Bool
    var training: Bool
    var bonuses: String
    
    init(_ lv: Int, _ py: String, _ sn: Double, _ pf: String, _ ad: Double, _ f: Bool, _ tg: Bool, _ bs: String) {
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
        leave = 0
        pay = ""
        signing = 0.0
        performance = ""
        awards = 0.0
        FO1K = false
        training = false
        bonuses = ""
    }
}
