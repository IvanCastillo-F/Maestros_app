//
//  FormAsignatureViewController.swift
//  Examen_1
//
//  Created by ISSC_612_2022 on 11/03/22.
//

import UIKit



class FormAsignatureViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pvStudent.delegate = self as UIPickerViewDelegate
        pvStudent.dataSource = self as UIPickerViewDataSource
        self.view.addSubview(pvStudent)
        
        let optionsClosure = { (action: UIAction) in
             self.g1 = action.title
             self.Grade1.setTitle(action.title, for: .normal)
             print(action.title)
           }
        let optionsClosure1 = { (action: UIAction) in
             self.g2 = action.title
             self.Grade2.setTitle(action.title, for: .normal)
             print(action.title)
           }
        let optionsClosure2 = { (action: UIAction) in
             self.g3 = action.title
             self.Grade3.setTitle(action.title, for: .normal)
             print(action.title)
           }
        
        
        Grade1.menu = UIMenu(children: [
             UIAction(title: "1", state: .on, handler: optionsClosure),
             UIAction(title: "2", handler: optionsClosure),
             UIAction(title: "3", handler: optionsClosure),
             UIAction(title: "4", handler: optionsClosure),
             UIAction(title: "5", handler: optionsClosure),
             UIAction(title: "6", handler: optionsClosure),
             UIAction(title: "7", handler: optionsClosure),
             UIAction(title: "8", handler: optionsClosure),
             UIAction(title: "9", handler: optionsClosure),
             UIAction(title: "10", handler: optionsClosure)
           ])
        
        Grade2.menu = UIMenu(children: [
            UIAction(title: "1", state: .on, handler: optionsClosure1),
            UIAction(title: "2", handler: optionsClosure1),
            UIAction(title: "3", handler: optionsClosure1),
            UIAction(title: "4", handler: optionsClosure1),
            UIAction(title: "5", handler: optionsClosure1),
            UIAction(title: "6", handler: optionsClosure1),
            UIAction(title: "7", handler: optionsClosure1),
            UIAction(title: "8", handler: optionsClosure1),
            UIAction(title: "9", handler: optionsClosure1),
            UIAction(title: "10", handler: optionsClosure1)
          ])
        
        Grade3.menu = UIMenu(children: [
            UIAction(title: "1", state: .on, handler: optionsClosure2),
            UIAction(title: "2", handler: optionsClosure2),
            UIAction(title: "3", handler: optionsClosure2),
            UIAction(title: "4", handler: optionsClosure2),
            UIAction(title: "5", handler: optionsClosure2),
            UIAction(title: "6", handler: optionsClosure2),
            UIAction(title: "7", handler: optionsClosure2),
            UIAction(title: "8", handler: optionsClosure2),
            UIAction(title: "9", handler: optionsClosure2),
            UIAction(title: "10", handler: optionsClosure2)
          ])
    }
    
    var std : Student? = nil
    
    var asignature = Asignature(name: "", teacher: "", grades: ["","",""], std: nil)
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return students.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let row = students[row].nameS
       return row
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
       {
           std = students[row]
               
       }
    
    @IBAction func onAddAsignature(_ sender: Any) {
        asignature.name = txtNameAsignature.text!
        asignature.teacher  = txtNameTeacher.text!
        asignature.grades![0] = g1
        asignature.grades![1] = g2
        asignature.grades![2] = g3
        asignature.std = std
        asig.append(asignature)
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBOutlet weak var txtNameAsignature: UITextField!
    @IBOutlet weak var Grade3: UIButton!
    @IBOutlet weak var Grade2: UIButton!
    @IBOutlet weak var pvStudent: UIPickerView!
    @IBOutlet weak var Grade1: UIButton!
    @IBOutlet weak var txtNameTeacher: UITextField!
    
    var g1 = ""
    var g2 = ""
    var g3 = ""
}
