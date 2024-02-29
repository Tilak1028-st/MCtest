//
//  MCtestTests.swift
//  MCtestTests
//
//  Created by Tilak Shakya on 29/02/24.
//

import XCTest
@testable import MCtest

final class MCtestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // Test case to ensure that the Contact model can be initialized correctly with the provided data.
    func testContactInitialization() {
        let contact = Contact(id: UUID(), name: "John Doe", info: Detail(title: "Mr.", age: 30, phone: "1234567890", email: "john.doe@example.com"))
        let name = contact.name
        
        XCTAssertEqual(name, "John Doe", "Name should be 'John Doe'")
    }
    
    // Test case to verify that the ContactDetailsView is initialized properly with a given Contact object.
    func testContactDetailsView() {
        let contact = Contact(id: UUID(), name: "Jane Smith", info: Detail(title: "Ms.", age: 25, phone: "9876543210", email: "jane.smith@example.com"))
        let contactDetailsView = ContactDetailsView(contact: contact)
        let viewDescription = contactDetailsView.body
        
        XCTAssertNotNil(viewDescription, "Contact details view should not be nil")
    }
    
    
    // Test case to check if the initial contacts count in the ContactsViewModel is correct.
    func testContactsViewModel() {
        let viewModel = ContactsViewModel()
        let contactsCount = viewModel.contacts.count
        
        XCTAssertEqual(contactsCount, 10, "Initial contacts count should be 10")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
