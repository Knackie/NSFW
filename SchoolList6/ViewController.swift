	//
//  ViewController.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    public var nam:String?;
    public var choice:String?;
    @IBOutlet weak var nameValue: UITextField!
    
    @IBAction func edit(_ sender: Any) {
        nam = nameValue.text
    }
    @IBAction func nameEdited(_ sender: Any) {
       nam = nameValue.text
    }
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            choice = "H"
            textLabel.text = "H"

        case 1:
            choice = "F"
            textLabel.text = "F"

        default:
            break
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
           let dest: StudentsTableViewController = segue.destination as! StudentsTableViewController;
           dest.nam = nameValue.text;
        dest.choice = choice;
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

