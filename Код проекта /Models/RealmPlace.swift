import Foundation
import RealmSwift

class Place:Object{
    @objc dynamic var name:String = ""
    @objc dynamic var lastName:String?
    @objc dynamic var phone:String?
    @objc dynamic var email:String?
    @objc dynamic var date = Date()
    
    convenience init(name:String,lastname:String?,phone:String?,email:String?) {
        self.init()
        self.name = name
        self.lastName = lastname
        self.phone = phone
        self.email = email
    }
}
