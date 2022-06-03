//
//  StorageManager.swift
//  ScriptRealmDB
//
//  Created by Игорь Островский on 03.06.2022.
//

import Foundation
import RealmSwift

let realm = try! Realm()

class StorageManager{
    static func saveObject(_ place:Object){
        try! realm.write{
            realm.add(place)
        }
    }
}
