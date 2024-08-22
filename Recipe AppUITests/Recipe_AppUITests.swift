//
//  Recipe_AppUITests.swift
//  Recipe AppUITests
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import XCTest

final class Recipe_AppUITests: XCTestCase {

    override func setUpWithError() throws {
       continueAfterFailure = false
 }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let usernameField = app.textFields["Username"]
        XCTAssertTrue(usernameField.exists)
        usernameField.tap()
        
        
        let emailTextField = app.textFields["Email"]
        XCTAssertTrue(emailTextField.exists)
        emailTextField.tap()
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        XCTAssertTrue(passwordSecureTextField.exists)
        passwordSecureTextField.tap()
        
        let aboutYouTextView = app.textViews["About You"]
        XCTAssertTrue(aboutYouTextView.exists)
        aboutYouTextView.tap()
        
        let signUpButton = app.buttons["Sign Up"]
        XCTAssertTrue(signUpButton.exists)
        signUpButton.tap()
              
        

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
