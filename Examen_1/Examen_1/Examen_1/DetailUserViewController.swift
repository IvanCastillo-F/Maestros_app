//
//  DetailUserViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 10/03/22.
//

import UIKit

class DetailUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        txtName.text = usuario[position].name
        txtLastName.text = usuario[position].lastName
        txtUsername.text = usuario[position].user
        imgUser.image = usuario[position].image
    }
    
    @IBOutlet weak var txtName: UITextView!
    @IBOutlet weak var txtLastName: UITextView!
    @IBOutlet weak var txtUsername: UITextView!
    @IBOutlet weak var imgUser: UIImageView!
    

}
