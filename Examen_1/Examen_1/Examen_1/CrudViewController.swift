//
//  CrudViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 10/03/22.
//




import UIKit

class CrudViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

              txtStudentName.becomeFirstResponder()
       
    }
    var alum :Student = Student(name: "", lastName: "", image: nil)
    
    @IBAction func onRegister(_ sender: Any) {
        
        alum.nameS = txtStudentName.text!
        alum.lastNameS = txtLastStudent.text!
        alum.imageS = imgStudent.image
        students.append(alum)
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    @IBAction func AddPicture(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        
        present(imagePicker, animated: true, completion: nil)
        
        imagePicker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imgStudent.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        
        dismiss(animated: true, completion: nil)
        
    }
    
   
    
    
    @IBOutlet weak var txtStudentName: UITextField!
    @IBOutlet weak var txtLastStudent: UITextField!
    @IBOutlet weak var imgStudent: UIImageView!
    

}
