//
//  ContactsView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct ContactsView: View {
    private let contactsViewVM = ContactsViewViewModel()
    
    var body: some View {
        TabView {
            PersonsListView(contacts: contactsViewVM.contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            SectionContactsView(contacts: contactsViewVM.contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContactsView()
}
