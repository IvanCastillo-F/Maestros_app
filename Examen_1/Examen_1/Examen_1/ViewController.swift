//
//  ViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 08/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        txtUser.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
        txtPassword.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
    }

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        usuario.forEach { us in
            if(us.user == txtUser.text!){
                if(us.password == txtPassword.text!){
                    btnLogin.isEnabled = true
                }else{
                    btnLogin.isEnabled = false
                }
            }
        }
    }
    
    
}

