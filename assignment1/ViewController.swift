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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addCourseClicked(_ sender: Any) {
        if courseTitle.hasText, let name = courseTitle.text {
            print("\(name)")
        }
    }
    

}
