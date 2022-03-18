//
//  Usuario.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 08/03/22.
//

import Foundation
import UIKit


var usuario = [Usuario]()
var usuarioNube:[Usuario] = [Usuario(name: "Peter", lastName: "Parker", user: "ola", password: "123", image: UIImage.checkmark)]

class Usuario{
    
    var name :String = ""
    var lastName :String = ""
    var user :String = ""
    var password :String = ""
    var image :UIImage?
    
    
    init(name :String,lastName :String,user :String,password :String,image :UIImage?){
        self.name = name
        self.lastName = lastName
        self.user = user
        self.password = password
        self.image = image
        
    }
    
}


