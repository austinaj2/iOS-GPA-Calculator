//
//  ViewController.swift
//  assignment1
//
//  Created by Macky Cisse on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var courseTitle: UITextField!
    @IBOutlet weak var assignPoints: UITextField!
    @IBOutlet weak var midtermPoints: UITextField!
    @IBOutlet weak var finalPoints: UITextField!
    @IBOutlet weak var assignMax: UITextField!
    @IBOutlet weak var midtermMax: UITextField!
    @IBOutlet weak var finalMax: UITextField!
    @IBOutlet weak var assignPct: UITextField!
    @IBOutlet weak var midtermPct: UITextField!
    @IBOutlet weak var finalPct: UITextField!
    @IBOutlet weak var creditsField: UITextField!
    @IBOutlet weak var courseID: UITextField!

    @IBOutlet weak var addCourseBtn: UIButton!
    @IBOutlet weak var deleteCourseBtn: UIButton!
    
    @IBOutlet weak var boardView: UITextView!
    
    var workings:String = ""
    var coursesArr: Array<Course> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //
    // boardView.text += name+"\n"

    @IBAction func addCourseClicked(_ sender: Any) {
        let c = Course()
        var s = scaledScore()
        var aTotal = 0.0
        var mTotal = 0.0
        var fTotal = 0.0

        if courseTitle.hasText, let name = courseTitle.text {
            c.cName = name
        }
        else {
            print("*Course title!")
        }
        for i in coursesArr {
            if i.cName == c.cName {
                print("*Name already in use")
            }
        }
        if assignPoints.hasText, let aP = assignPoints.text {
            if let num = Double(aP) {
                s.points = num
            }
            else {
                print("*Valid number")
            }
        }
        if assignMax.hasText, let aM = assignMax.text {
            if let num = Double(aM) {
                s.max = num
            }
            else {
                print("*Valid number")
            }
        }
        if assignPct.hasText, let aPercent = assignPct.text {
            if let num = Double(aPercent) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        
        if s.points > s.max || s.points < 0 {
            print("*Points greater than max")
        }
        s.total = (s.points/s.max)*(s.percent/100)
        c.assignScore = s.total
        aTotal = s.percent
        s = scaledScore(points: 0, max: 0, percent: 0, total: 0)
        
        if midtermPoints.hasText, let mP = midtermPoints.text {
            if let num = Double(mP) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        if midtermMax.hasText, let mM = midtermMax.text {
            if let num = Double(mM) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        if midtermPct.hasText, let mPercent = midtermPct.text {
            if let num = Double(mPercent) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        
        if s.points > s.max || s.points < 0 {
            print("*Points greater than max")
        }
        s.total = (s.points/s.max)*(s.percent/100)
        c.midtermScore = s.total
        mTotal = s.percent
        s = scaledScore(points: 0, max: 0, percent: 0, total: 0)
        
        if finalPoints.hasText, let fP = finalPoints.text {
            if let num = Double(fP) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        if finalMax.hasText, let fM = finalMax.text {
            if let num = Double(fM) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        if finalPct.hasText, let fPercent = finalPct.text {
            if let num = Double(fPercent) {
                s.percent = num
            }
            else {
                print("*Valid number")
            }
        }
        
        if s.points > s.max || s.points < 0 {
            print("*Points greater than max")
        }
        s.total = (s.points/s.max)*(s.percent/100)
        c.finalScore = s.total
        fTotal = s.percent
        s = scaledScore(points: 0, max: 0, percent: 0, total: 0)
        
        if creditsField.hasText, let cred = creditsField.text {
            if let num = Int(cred), num >= 4 {
                c.credits = num
            }
            else {
                print("*Valid credit number")
            }
        }
        if !creditsField.hasText {
            print("*Provide a credit number")
        }
        
        let percentCheck = aTotal + mTotal + fTotal
        
        if percentCheck != 100.0 {
            print("*Percents don't add to 100")
        }
        
        let grandTotal = c.assignScore + c.midtermScore + c.finalScore
        
        if grandTotal >= 90 {
            c.grade = "A"
        }
        if grandTotal >= 80 && grandTotal < 90 {
            c.grade = "B"
        }
        if grandTotal >= 70 && grandTotal < 80 {
            c.grade = "C"
        }
        if grandTotal >= 60 && grandTotal < 70 {
            c.grade = "D"
        }
        else {
            c.grade = "F"
        }
        
        if coursesArr.count < 4 {
            coursesArr.append(c)
        }
        let index = 1
        for course in coursesArr {
            boardView.text = "\(index)) "+course.cName+" | "+"\(course.credits)"
        }
        
    }

}

struct scaledScore {
    var points:Double = 0.0
    var max:Double = 0.0
    var percent:Double = 0.0
    var total:Double = 0.0
}
class Course {
    var cName = ""
    var assignScore:Double = 0.0
    var midtermScore:Double = 0.0
    var finalScore:Double = 0.0
    var credits:Int = 0
    var grade:String = ""
}
