import XCTest
import Testing
import HTTP
@testable import Vapor
@testable import App

/// This file shows an example of testing 
/// routes through the Droplet.

class RouteTests: TestCase {
    let drop = try! Droplet.testable()

    func testInfo() throws {
        print(
            try drop
                .testResponse(to: .get, at: "info/request")
                .assertStatus(is: .ok)
                .assertBody(contains: "0.0.0.0")
        )
    }
    
    func testLogin() throws {
        var loginData = JSON()
        try loginData.set("email", "jonas.peeters@me.com")
        try loginData.set("password", "123456")
        
        try drop
            .post("login", query: [:], [:], Body(loginData), through: [])
            .assertStatus(is: .ok)
        print(
            try drop
                .get("user/info")
        )
    }
}

// MARK: Manifest

extension RouteTests {
    /// This is a requirement for XCTest on Linux
    /// to function properly.
    /// See ./Tests/LinuxMain.swift for examples
    static let allTests = [
        ("testInfo", testInfo),
    ]
}
