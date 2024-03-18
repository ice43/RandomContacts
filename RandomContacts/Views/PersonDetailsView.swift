//
//  PersonDetailsView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct PersonDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                
                Image(systemName: contact.avatar)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                
                Spacer()
            }
            
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    PersonDetailsView(contact: Person.getContacts().first!)
}
