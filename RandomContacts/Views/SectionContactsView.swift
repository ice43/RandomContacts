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
            List(contacts, id: \.self) { contact in
                Section {
                    SectionRowsView(contact: contact)
                } header: {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    SectionContactsView(contacts: Person.getContacts())
}
