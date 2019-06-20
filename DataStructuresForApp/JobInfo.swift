//
//  JobInfo.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation


class JobInfo {
    var descrip : String
    var hours : String
    var positionTitle : String
    var date : String
    var supervisor: String
    
    
    init(_ d: String, _ h: String, _ p: String, _ da: String, _ sup: String) {
        descrip = d
        hours = h
        positionTitle = p
        date = da
        supervisor = sup
    }
    init(){
        descrip = ""
        hours = ""
        positionTitle = ""
        date = ""
        supervisor = ""
    }
}
