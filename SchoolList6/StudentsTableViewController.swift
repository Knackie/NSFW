//
//  StudentsTableViewController.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {

    var choice: String?;
    var nam: String?;
    var model: StudentModel?;
    var i = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad();
        model = (UIApplication.shared.delegate as! AppDelegate).model

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return model!.getStudentsCount();
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell")
        (cell as! StudentCell).studentName.text = model!.getStudentAtIndex(indexPath.row,choice: choice ?? "H")
            return cell!;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        let dest: EditController = segue.destination as! EditController;
        let row:Int = tableView.indexPathForSelectedRow!.row;
        let student: String = model!.getStudentAtIndex(row, choice: choice ?? "H");
        dest.row = row;
        dest.nam = nam;
        dest.name = student;
    }
        
    @IBAction func unwindFromCancel( unwindSegue: UIStoryboardSegue) {}

    
    @IBAction func unwindFromOK( unwindSegue: UIStoryboardSegue) {
               let sourceViewController: EditController = unwindSegue.source as! EditController;
           let newName: String = sourceViewController.nameField.text!;
        let row:Int = sourceViewController.row!;
        model!.setStudentAtIndex(row, withValue: newName);
        tableView.reloadData();
        
    }
   /* @IBAction func segmentedControlAction(sender: AnyObject) {
       if(segementControl.selectedSegmentIndex == 0)
       {
           print(segementControl.titleForSegmentAtIndex(0))

       }
       else if(segementControl.selectedSegmentIndex == 1)
       {
            print(segementControl.titleForSegmentAtIndex(1))
       }
    }*/
}
