//
//  ContactViewModel.swift
//  MCtest
//
//  Created by Tilak Shakya on 29/02/24.
//

import Foundation

/// View model responsible for managing the list of contacts and the selected contact.
class ContactsViewModel: ObservableObject {
    /// Published property holding the array of contacts.
    @Published var contacts: [Contact] = []

    /// Initializes the view model and loads the data from the JSON file.
    init() {
        if let data = loadDataFromJSONFile() {
            contacts = data
        }
    }
    
    /// Loads data from the JSON file and decodes it into an array of contact objects.
    /// - Returns: An array of contact objects if successful, otherwise nil.
    private func loadDataFromJSONFile() -> [Contact]? {
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
            print("JSON file 'data.json' not found.")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let contacts = try JSONDecoder().decode([Contact].self, from: data)
            return contacts
        } catch {
            print("Error loading JSON data or decoding: \(error)")
            return nil
        }
    }
}
