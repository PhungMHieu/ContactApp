//
//  ContactCellView.swift
//  ContactAppError
//
//  Created by Admin on 4/9/25.
//

import SwiftUI

struct ContactCellView: View {
    @ObservedObject var viewModel: ContactViewModel
    @State var isSelected: Bool = false
    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            HStack {
                Text(viewModel.firstName)
                Text(viewModel.lastName)
                Text(viewModel.phone)
            }
        }
        .sheet(isPresented: $isSelected) {
            DetailContact(contact: viewModel)
        }
    }
}

#Preview {
    ContactCellView(viewModel: .init(firstName: "Nguyen", lastName: "Manh", phone: "0123456789"))
}
