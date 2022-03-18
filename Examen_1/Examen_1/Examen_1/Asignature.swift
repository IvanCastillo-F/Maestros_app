//
//  Asignature.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 11/03/22.
//

import Foundation

var asig  = [Asignature]()

class Asignature{
    
    
    var name: String = ""
    var teacher: String = ""
    var grades :[String]?
    var std : Student?
    
    init(name :String,teacher :String,grades :[String]?,std : Student? ){
        self.name = name
        self.teacher = teacher
        self.grades = grades
        self.std = std
    }
    
}
