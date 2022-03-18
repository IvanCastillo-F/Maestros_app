//
//  Student.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 10/03/22.
//

import Foundation
import UIKit

var students = [Student]()

class Student{
    var nameS :String = ""
    var lastNameS :String = ""
    var imageS :UIImage?
    
    init(name :String,lastName :String,image :UIImage?){
        self.nameS = name
        self.lastNameS = lastName
        self.imageS = image
    }
}
