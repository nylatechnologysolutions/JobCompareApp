//
//  Job.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import Foundation

class Job {
    var info: JobInfo
    var comp: CompanyInfo
    var ben: Benefits
    
    init(_ inf: JobInfo, _ cp: CompanyInfo, _ bn: Benefits) {
        info = inf
        comp = cp
        ben = bn
    }
    init() {
        info = JobInfo()
        comp = CompanyInfo()
        ben = Benefits()
    }
}
