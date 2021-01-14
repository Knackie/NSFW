//
//  EditController.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class EditController: UIViewController {
     
    
    var name:String?;
    var row:Int?;
    var nam:String?;
    
    @IBOutlet weak var inf: UILabel!
    
    
    
    
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        var test = "Bravo "
        test = test + (nam ?? "")
        test = test + " tu as choisi un enfant"
        inf.text = test
        nameField.text = name;
    }
}
