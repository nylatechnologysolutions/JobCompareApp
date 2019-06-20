//
//  CompanyInfo.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation

class CompanyInfo {
    var name: String
    var location: String
    
    init(_ n: String, _ l: String) {
        name = n
        location = l
    }
    init(){
        name = ""
        location = ""
    }
}
