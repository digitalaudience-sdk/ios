import XCTest
@testable import digitalAudienceSDK

final class Sha256HashProviderTests: XCTestCase {
    let sha256HashProvider : HashProvider = Sha256HashProvider()

    func testGetHashLowerCase() {
        let input = "test@digitalaudience.io"
        let expectedOutput = "343e00121b70bc1a6ea179468f63beed780a92122402478037b9366a677ab24a"

        let output = sha256HashProvider.getHash(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly hashed.")
    }

    func testGetHashUpperCase() {
        let input = "TEST@DIGITALAUDIENCE.IO"
        let expectedOutput = "8c887d4a4d632aeab700022ede9c166c500589e369eaff17796c042b8b0733f1"

        let output = sha256HashProvider.getHash(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized.")
    }
}
