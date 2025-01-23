import XCTest

class FourTest: BaseTest {

    func test_four()
    {
        let appUserName = getValue(dict: usersData, key: "userName")
        let appPassword = getValue(dict: usersData, key: "password")
        print("Username from users.json file is: "+appUserName+" Password from users.json file is: "+appPassword)
        homePage.automationAppButton.click()
        XCTAssertTrue(homePage.alert("This is a Dummy App").exists, "Alert is not Displayed")
    }
}
