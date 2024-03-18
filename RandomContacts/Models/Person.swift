//
//  Person.swift
//  RandomContacts
//
//  Created by Serge Broski on 3/14/24.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    let avatar: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [phone, email]
    }

    static func getContacts() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phones = dataStore.phones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index],
                avatar: "person.fill"
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
