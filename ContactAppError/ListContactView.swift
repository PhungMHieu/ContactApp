//
//  ListContactView.swift
//  ContactAppError
//
//  Created by Admin on 4/9/25.
//

import SwiftUI

struct ListContactView: View {
    @ObservedObject var contactManager: ContactManager
    var body: some View {
//        List(contactManager.contacts) { contact in
//            ContactCellView(viewModel: contact)
//        }
        List(contactManager.contacts, id: \.id) { contact in
            ContactCellView(viewModel: contact)
        }
    }
}

#Preview {
    ListContactView(contactManager: .init())
}
