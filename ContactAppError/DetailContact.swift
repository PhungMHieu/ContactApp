//
//  DetailContact.swift
//  ContactAppError
//
//  Created by Admin on 4/9/25.
//

import SwiftUI

struct DetailContact: View {
    var contact: ContactViewModel
    var body: some View {
        VStack(){
            TextField(text: contact.firstName) {
                Text("First Name")
            }
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
            TextField(text: contact.lastName) {
                Text("Last Name")
            }
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
            TextField(text: contact.phone) {
                Text("Last Name")
            }
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    DetailContact(contact: .init(firstName: "Nam", lastName: "Nguyen", phone: "0945341341"))
}
