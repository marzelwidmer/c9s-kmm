//
//  c9sTests.swift
//  c9sTests
//
//  Created by morpheus on 10.04.21.
//

import XCTest

@testable import c9s // Import App


// MockData Service
class MockDataService: DataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        completion([User(id: 1, name: "c9s user")])
    }
}


class c9sTests: XCTestCase {
    
    var sut: UsersView.ViewModel!

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UsersView.ViewModel(dataService: MockDataService())
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func test_geUsers() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(sut.users.isEmpty)
        sut.getUsers()
        XCTAssertEqual(sut.users.count, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
