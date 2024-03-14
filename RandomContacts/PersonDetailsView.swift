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
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                Spacer()
            }
            
            HStack {
                Image(systemName: "phone")
                    .foregroundStyle(.tint)
                Text(contact.phone)
            }
            
            HStack {
                Image(systemName: "tray")
                    .foregroundStyle(.tint)
                Text(contact.email)
            }
            
            
        }
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    PersonDetailsView(contact: Person.getContact())
}
