//
//  ViewController.swift
//  ScriptRealmDB
//
//  Created by Игорь Островский on 03.06.2022.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    var places: Results<Object>!
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var lastNameTextField:UITextField!
    @IBOutlet var phoneTextField:UITextField!
    @IBOutlet var emailTextField:UITextField!
    @IBAction func pressSaveButton(button:UIButton){
        saveObjectInBd()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    private func saveObjectInBd(){
        let newPlace = Place(name: nameTextField.text!, lastname: lastNameTextField.text, phone: phoneTextField.text, email: emailTextField.text)
        realm.beginWrite()
        realm.add(newPlace)
        try! realm.commitWrite()
    }

}

