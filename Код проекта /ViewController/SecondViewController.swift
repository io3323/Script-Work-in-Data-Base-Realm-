//
//  SecondViewController.swift
//  ScriptRealmDB
//
//  Created by Игорь Островский on 03.06.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var lastNameLabel:UILabel!
    @IBOutlet var phoneLable:UILabel!
    @IBOutlet var emailLabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
renderBD()
        
    }
    
    private func renderBD(){
        let places = try! realm.objects(Place.self)
        for object in places{
            nameLabel.text = object.name
            lastNameLabel.text = object.lastName
            phoneLable.text = object.phone
            emailLabel.text = object.email
        }
    }
}
