//
//  ContentView.swift
//  MCtest
//
//  Created by Tilak Shakya on 29/02/24.
//

import SwiftUI

/// A view for managing contacts, displaying a sidebar with contact names and a detail view.
struct ContentView: View {
    /// The view model responsible for managing the list of contacts.
    @StateObject var viewModel = ContactsViewModel()
    /// The currently selected contact.
    @State private var selectedContact: Contact?
    
    
    var body: some View {
        #if os(iOS)
        NavigationView {
            sidebar
                .listStyle(SidebarListStyle())
            detailView
        }
        #elseif os(macOS)
        NavigationView {
            sidebar
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            detailView
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
        #else
        NavigationSplitView {
            sidebar
        } detail: {
            detailView
        }
        #endif
    }
    
    /// The sidebar displaying a list of contact names.
    private var sidebar: some View {
        List(viewModel.contacts) { contact in
            NavigationLink {
                ContactDetailsView(contact: contact)
            } label: {
                Text(contact.name)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .navigationTitle("Contacts")
    }
    
    /// The detail view displaying details of the selected contact.
    private var detailView: some View {
        Group {
            if let selectedContact = selectedContact {
                ContactDetailsView(contact: selectedContact)
                    .navigationTitle(selectedContact.name)
            } else {
                Text("Select a contact")
                    .foregroundColor(.secondary)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
