//
//  ContactDetailsView.swift
//  MCtest
//
//  Created by Tilak Shakya on 29/02/24.
//

import SwiftUI

import SwiftUI

/// A view displaying details of a contact.
struct ContactDetailsView: View {
    /// The person whose details are being displayed.
    let contact: Contact
    
    /// The body of the view.
    var body: some View {
        VStack(alignment: .leading) {
            Text(contact.name)
                .font(.title)
            Text("Title: \(contact.info.title)")
            Text("Age: \(contact.info.age)")
            Text("Phone: \(contact.info.phone)")
            Text("Email: \(contact.info.email)")
        }
        .padding()
        .navigationTitle(contact.name)
    }
}


#Preview {
    ContactDetailsView(contact: Contact(id: UUID(), name: "John", info: Detail(title: "Dr.", age: 32, phone: "1234567891", email: "john@mail.com")))
}
