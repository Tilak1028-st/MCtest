//
//  Contact.swift
//  MCtest
//
//  Created by Tilak Shakya on 29/02/24.
//

import Foundation

/// A struct representing a contact.
struct Contact: Identifiable, Hashable, Codable {
    /// The unique identifier of the contact.
    var id: UUID
    /// The name of the contact.
    var name: String
    /// Details information about the contact.
    var info: Detail
    
    /// Initializes a contact with the given properties.
    /// - Parameters:
    ///   - id: The unique identifier of the contact.
    ///   - name: The name of the contact.
    ///   - info: Details information about the contact.
    init(id: UUID, name: String, info: Detail) {
        self.id = id
        self.name = name
        self.info = info
    }
    
    /// Initializes a contact from the given decoder.
    /// - Parameter decoder: The decoder to read data from.
    /// - Throws: An error if reading from the decoder fails, or if the data is corrupted or otherwise invalid.
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(UUID.self, forKey: .id) ?? UUID()
        name = try container.decode(String.self, forKey: .name)
        info = try container.decode(Detail.self, forKey: .info)
    }
    
    /// Checks whether two contacts are equal based on their identifiers.
    /// - Parameters:
    ///   - lhs: The left-hand side contact.
    ///   - rhs: The right-hand side contact.
    /// - Returns: `true` if the two conatct have the same identifier, otherwise `false`.
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        lhs.id == rhs.id
    }
    
    /// Hashes the contact into a hasher.
    /// - Parameter hasher: The hasher to use in hashing the contact.
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

/// A struct representing details information about a contact.
struct Detail: Codable {
    /// The title of the contact.
    var title: String
    /// The age of the contact.
    var age: Int
    /// The phone number of the contact.
    var phone: String
    /// The email address of the contact.
    var email: String
}

