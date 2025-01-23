//
//  TwoTest.swift
//  DemoAppUITests
//
//  Created by Santhosh kumar DC on 23/01/2025.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

class TwoTest: BaseTest {
    
    //Dummy Tests case which will fail on first execution.
    //Change your locators acccordingly
    func test_two()
    {
        let appUserName = getValue(dict: usersData, key: "userName")
        let appPassword = getValue(dict: usersData, key: "password")
        print("Username from users.json file is: "+appUserName+" Password from users.json file is: "+appPassword)
        homePage.automationAppButton.click()
        XCTAssertTrue(homePage.alert("This is a Dummy App").exists, "Alert is not Displayed")
    }
}
