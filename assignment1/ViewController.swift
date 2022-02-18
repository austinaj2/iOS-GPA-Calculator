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
    @IBOutlet weak var assignPctTotal: UITextField!
    @IBOutlet weak var midtermPctTotal: UITextField!
    @IBOutlet weak var finalPctTotal: UITextField!
    @IBOutlet weak var creditsField: UITextField!
    @IBOutlet weak var deleteCourseID: UITextField!
    
    @IBOutlet weak var addCourseBtn: UIButton!
    @IBOutlet weak var deleteCourseBtn: UIButton!
    
    var mCourseText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTitle.delegate = self
        assignPoints.delegate = self
        midtermPoints.delegate = self
        finalPoints.delegate = self
        assignMax.delegate = self
        midtermMax.delegate = self
        finalMax.delegate = self
        assignPctTotal.delegate = self
        midtermPctTotal.delegate = self
        finalPctTotal.delegate = self
        creditsField.delegate = self
        deleteCourseID.delegate = self
    }

    @IBAction func addCourseClicked(_ sender: Any) {
        if let name = courseTitle.text {
            
        }
    }
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        courseTitle.resignFirstResponder()
        return true
    }
}
