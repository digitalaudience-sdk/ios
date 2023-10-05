import XCTest
@testable import digitalAudienceSDK

final class EmailAddressNormalizerTests: XCTestCase {
    let emailAddressNormalizer : StringNormalizer = EmailAddressNormalizer()

    func testNormalizeLowerCase() {
        let input = "test@digitalaudience.io"
        let expectedOutput = "test@digitalaudience.io"

        let output = emailAddressNormalizer.normalize(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized.")
    }

    func testNormalizeToLowerCase() {
        let input = "TEST@digitalAudience.io"
        let expectedOutput = "test@digitalaudience.io"

        let output = emailAddressNormalizer.normalize(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized.")
    }

    func testNormalizeSuffix() {
        let input = "test+123456@digitalaudience.io"
        let expectedOutput = "test@digitalaudience.io"

        let output = emailAddressNormalizer.normalize(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized.")
    }

    func testNormalizeTrimming() {
        let input = " test@digitalaudience.io "
        let expectedOutput = "test@digitalaudience.io"

        let output = emailAddressNormalizer.normalize(input)

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized.")
    }
}
