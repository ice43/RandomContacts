//
//  PersonRowView.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

import SwiftUI

struct PersonRowView: View {
    let contact: Person
    
    var body: some View {
        Text(contact.fullName)
    }
}

#Preview {
    PersonDetailsView(contact: Person.getContact())
}

