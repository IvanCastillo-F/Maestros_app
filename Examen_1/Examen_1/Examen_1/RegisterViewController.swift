//
//  RegisterViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 08/03/22.
//

import UIKit

var datos = Usuario(name: "", lastName: "", user: "", password: "", image: nil)

class RegisterViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBAction func onRegister(_ sender: Any) {
        
        if((txtName.text?.count)! > 0){
            datos.name = txtName.text!
            datos.lastName = txtLastName.text!
            datos.user = txtUser.text!
            datos.password = txtPassword.text!
            datos.image = imgUser.image
            usuario.append(datos)
        }
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    @IBAction func SelectPhoto(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        
        present(imagePicker, animated: true, completion: nil)
        
        imagePicker.delegate = self
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imgUser.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBOutlet weak var btnCam: UIBarButtonItem!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtName.becomeFirstResponder()
    }
    

}
