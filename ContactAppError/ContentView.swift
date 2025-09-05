//
//  ContentView.swift
//  ContactAppError
//
//  Created by Admin on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var contactManager = ContactManager()
    var body: some View {
        ListContactView(contactManager: contactManager)
    }
}

#Preview {
    ContentView()
}
