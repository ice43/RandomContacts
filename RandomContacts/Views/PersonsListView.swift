//
//  PersonsListView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct PersonsListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(
                    contact.fullName,
                    destination: PersonDetailsView(contact: contact)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    PersonsListView(contacts: Person.getContacts())
}
