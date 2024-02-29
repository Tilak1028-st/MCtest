# SwiftContacts

SwiftContacts is a simple SwiftUI app that allows you to import and display contact information from a JSON file. It leverages Codable to import the data and provides a user-friendly interface to view contact details.

## Features

- **Import Data**: Contacts are imported using Codable from a JSON file located in the assets folder.
- **Sidebar Navigation**: Names of contacts are displayed in a left sidebar, which collapses in compact mode for a better user experience.
- **Detail View**: Selecting a contact name in the sidebar displays the contact details in the main view on the right.
- **Unit Tests**: Includes unit tests to ensure proper initialization of contact objects and view components.
- **SwiftUI Previews**: Functional SwiftUI previews for visual testing and development.
- **Compilable and Runnable**: The application can be compiled and run using Xcode.

## Getting Started

To run the app:

1. Clone this repository to your local machine.
2. Open the project in Xcode.
3. Build and run the app on a simulator.

## Unit Tests

The unit tests ensure the proper functioning of key components of the app:

- `testContactInitialization`: Ensures correct initialization of contact objects.
- `testContactDetailsView`: Verifies the initialization of the contact details view.
- `testPersonsViewModel`: Checks the initial contacts count in the view model.

