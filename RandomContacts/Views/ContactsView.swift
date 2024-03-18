//
//  ContactsView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct ContactsView: View {
    private let contacts = Person.getContacts()
    
    var body: some View {
        TabView {
            PersonsListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            
            SectionContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContactsView()
}
