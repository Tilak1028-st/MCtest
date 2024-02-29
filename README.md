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


## Screenshots

### iPhone Screenshots

<img src="https://github.com/Tilak1028-st/MCtest/assets/75114840/f95596ae-3ee9-492c-892e-a1547e33e1a4" alt="iPhone contact List Screen" width="300"> <img src="https://github.com/Tilak1028-st/MCtest/assets/75114840/5c85d028-36a8-4adf-8b35-8f7b2e78b71b" alt="iPhone contact detail screen" width="300">

### iPad Screenshots

<img src="https://github.com/Tilak1028-st/MCtest/assets/75114840/f64dc82f-bed9-443c-8164-e37455ab900c" alt="iPad landscape mode" width="400"> <img src="https://github.com/Tilak1028-st/MCtest/assets/75114840/3fde8ea5-0cfc-434a-8507-3bd61a4a635a" alt="iPad portrait mode" width="300">


