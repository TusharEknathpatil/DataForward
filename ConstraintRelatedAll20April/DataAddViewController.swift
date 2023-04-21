//
//  DataAddViewController.swift
//  ConstraintRelatedAll20April
//
//  Created by Mac on 20/04/23.
//

import UIKit

class DataAddViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   
    @IBAction func saveButton(_ sender: Any) {
        let dataShowViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        var firstName = firstNameTextField.text ?? "TUSHAR"
        var lastName = lastNameTextField.text ?? "Patil"
        dataShowViewController.objOfStruct = Student(firstName: firstName, lastName: lastName)
        navigationController?.pushViewController(dataShowViewController, animated: true)
        
    }
    
}
