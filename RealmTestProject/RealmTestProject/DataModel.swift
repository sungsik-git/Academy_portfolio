import Foundation
import RealmSwift

class PersonData: Object {
    @objc dynamic var userName = ""
    @objc dynamic var userAge = 0
    @objc dynamic var userEmail = ""
}

class DataManager {
    let realm = try! Realm() // Realm 인스턴스 생성

    func addPersonData() {
        let personData = PersonData()
        let inputtedData = inputDataToPersonData(personData: personData)
        
        try? realm.write {
            realm.add(inputtedData)
        }
    }

    func inputDataToPersonData(personData: PersonData) -> PersonData {
        if let name = txtUserName.text {
            personData.userName = name
        }
        
        var age = 0
        if let getAge = txtUserAge.text {
            if let ageValue = Int(getAge) {
                age = ageValue
            }
        }
        personData.userAge = age
        
        if let email = txtUserEmail.text {
            personData.userEmail = email
        }
        
        return personData
    }
}

// Create an instance of DataManager
let dataManager = DataManager()
dataManager.addPersonData()
