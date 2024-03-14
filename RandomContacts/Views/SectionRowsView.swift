//
//  SectionRowView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct SectionRowsView: View {
    let contact: Person
    
    var body: some View {
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
}

#Preview {
    SectionRowsView(contact: Person.getContact())
}
