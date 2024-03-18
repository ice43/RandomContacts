//
//  SectionContactsView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct SectionContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section {
                    Label(contact.phone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                } header: {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    SectionContactsView(contacts: Person.getContacts())
}
