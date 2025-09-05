//
//  ContactManager.swift
//  ContactAppError
//
//  Created by Admin on 4/9/25.
//

import Foundation

//class ContactViewModel : ObservableObject, Identifiable{
//    let id = UUID().uuidString
//    @Published var firstName: String = ""
//    @Published var lastName: String = ""
//    @Published var phone: String = ""
//    
//    init(firstName: String, lastName: String, phone: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.phone = phone
//    }
//}
struct ContactViewModel : Identifiable{
    let id = UUID().uuidString
    var firstName: String
    var lastName: String
    var phone: String
    
    init(firstName: String, lastName: String, phone: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
    }
}
class ContactManager : ObservableObject{
    @Published var contacts: [ContactViewModel] = [
        .init(firstName: "Nguyen Van", lastName: "Son", phone: "0984574600"),
        .init(firstName: "Nguyen Van", lastName: "Nam", phone: "0984574601"),
        .init(firstName: "Nguyen Van", lastName: "Hoa", phone: "0984574602"),
        .init(firstName: "Nguyen Van", lastName: "Manh", phone: "0984574603")
    ]
}
