//
//  StudentModel.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class StudentModel {
    var students = ["Nom : Bon, Prénom : Jean, âge : 7 ans 3/4, Sexe : M","Nom : Pelle, Prénom : Sarah, âge : 5 ans tout juste, Sexe : F, votre genre","Nom : Troijours, Prénom : Adam, âge : 9 ans  - 3 jours, Sexe : M", "Nom : Épahintéréssé, Prénom : Gael, âge : 4 ans, Sexe : F, votre genre"];
     var students2 = ["Nom : Bon, Prénom : Jean, âge : 7 ans 3/4, Sexe : M, votre genre","Nom : Pelle, Prénom : Sarah, âge : 5 ans tout juste, Sexe : F","Nom : Troijours, Prénom : Adam, âge : 9 ans  - 3 jours, Sexe : M, votre genre", "Nom : Épahintéréssé, Prénom : Gael, âge : 4 ans, Sexe : F"];
    

    
    
    
    func getStudentAtIndex(_ index: Int, choice : String) -> String {
      
        if(choice == "F")
        {
        return students[index];
        }
        else
        {
            return students2[index];
        }
    }
    
    func setStudentAtIndex(_ index: Int, withValue : String){
        students[index] = withValue;
    }
    
    func getStudentsCount() -> Int {
        return students.count;
    }
}
