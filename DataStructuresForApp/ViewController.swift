//
//  ViewController.swift
//  DataStructuresForApp
//
//  Created by Jared Anderson on 6/10/19.
//  Copyright © 2019 Jared Anderson. All rights reserved.
//

import UIKit
import PDFKit
import QuartzCore

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = Bundle.main.url(forResource: "Letter11", withExtension: "pdf")!
        let pdf = PDFDocument(url: url)!
        let lines = pdf.string!.split(separator: "\n")
        let jaredJob = Job()
        for i in 0 ..< lines.count {
            let line = String(lines[i])
            print(line)
            if (line.contains("position")) {
                if (line.contains("_")) {
                    let iStrs = line.split(separator: "_")
                    var isJob = false
                    var wasJob = false
                    var pos = ""
                    for str in iStrs {
                        if (str.count == 1 && !wasJob) {
                            pos += str
                            isJob = true
                        }
                        if (isJob && str.count > 1) {
                            wasJob = true
                        }
                    }
                    jaredJob.info.positionTitle = pos
                }
                else {
                    var isPartOfJob = false
                    let iStrs = line.split(separator: " ")
                    var pos = ""
                    for j in 2 ..< iStrs.count {
                        if ((iStrs[j - 2] == "position" && iStrs[j - 1] == "of") || iStrs[j - 1] == "as" ||
                            (iStrs[j - 2] == "that" && iStrs[j - 1] == "of") ||
                            isPartOfJob) {
                            pos += String(iStrs[j]) + " "
                            isPartOfJob = true
                            if (iStrs[j].contains(".") || iStrs[j].contains(",") || iStrs[j].contains(")")) {
                                isPartOfJob = false
                            }
                        }
                    }
                    if (pos != "") {
                        jaredJob.info.positionTitle = pos
                    }
                }
                
            }
            if (line.contains("Salary") || line.contains("salary")) {
                let iStrs = line.split(separator: " ")
                var sal = ""
                for j in 1 ..< iStrs.count {
                    let str = iStrs[j]
                    if (str.contains("$") || (iStrs[j - 1] == "of" && iStrs[j - 2].contains("salary"))
                        || iStrs[j - 1].contains("alary:")) {
                        sal = String(str)
                    }
                }
                jaredJob.ben.pay = sal
            }
            if (line.contains("start date") || line.contains("Start Date") || line.contains("start work")
                || line.contains("starting")) {
                var isPartOfDate = false
                let iStrs = line.split(separator: " ")
                var date = ""
                for j in 3 ..< iStrs.count {
                    if ((iStrs[j - 1] == "be" && iStrs[j - 3] == "date") ||
                        (iStrs[j - 1] == "on" && iStrs[j - 2] == "work") ||
                        (iStrs[j - 1] == "on" && iStrs[j - 2] == "employment") ||
                        isPartOfDate) {
                        date += String(iStrs[j]) + " "
                        isPartOfDate = true
                    }
                    if (iStrs[j].contains(".")) {
                        isPartOfDate = false
                    }
                }
                jaredJob.info.date = date
            }
            if (line.contains("reporting") || line.contains("report")) {
                if (line.contains("_")) {
                    var isPartOfSup = false
                    let iStrs = line.split(separator: "_")
                    var sup = ""
                    for j in 1 ..< iStrs.count {
                        if (isPartOfSup && iStrs[j].count <= 2) {
                            sup += iStrs[j]
                        }
                        else {
                            isPartOfSup = false
                        }
                        if ((iStrs[j].contains("reporting to"))) {
                            isPartOfSup = true
                        }
                    }
                    if (sup != "") {
                    jaredJob.info.supervisor = sup
                    }
                }
                else {
                    let iStrs = line.split(separator: " ")
                    var sup = ""
                    var isSup = false
                    for j in 4 ..< iStrs.count {
                        if ((iStrs[j - 3] == "will" && iStrs[j - 2] == "report" && iStrs[j - 1] == "to") ||
                            (iStrs[j - 4] == "will" && iStrs[j - 2] == "reporting" && iStrs[j - 1] == "to") || (iStrs[j - 2] == "reports" && iStrs[j - 1] == "to") ||
                            isSup) {
                            isSup = true
                            sup += iStrs[j] + " "
                        }
                        if (iStrs[j].contains(".") || iStrs[j].contains(",")) {
                            isSup = false
                        }
                    }
                    if (sup != "") {
                        jaredJob.info.supervisor = sup
                    }
                }
            }
        }
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.text = "Job Title: " + jaredJob.info.positionTitle + ", Supervisor: " + jaredJob.info.supervisor + "Salary: " + jaredJob.ben.pay + ", Start Date: " + jaredJob.info.date
        
    }


}

