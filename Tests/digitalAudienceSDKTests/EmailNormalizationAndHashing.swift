import XCTest
@testable import digitalAudienceSDK

final class EmailNormalizationAndHashingTests: XCTestCase {
    let emailAddressNormalizer : StringNormalizer = EmailAddressNormalizer()
    let sha256HashProvider : HashProvider = Sha256HashProvider()

    func testNormalizeLowerCase() {
        let input = "test@digitalaudience.io"
        let expectedOutput = "343e00121b70bc1a6ea179468f63beed780a92122402478037b9366a677ab24a"

        let output = sha256HashProvider.getHash(emailAddressNormalizer.normalize(input))

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized or hashed.")
    }

    func testNormalizeToLowerCase() {
        let input = "TEST@digitalAudience.io"
        let expectedOutput = "343e00121b70bc1a6ea179468f63beed780a92122402478037b9366a677ab24a"

        let output = sha256HashProvider.getHash(emailAddressNormalizer.normalize(input))

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized or hashed.")
    }

    func testNormalizeSuffix() {
        let input = "test+123456@digitalaudience.io"
        let expectedOutput = "343e00121b70bc1a6ea179468f63beed780a92122402478037b9366a677ab24a"

        let output = sha256HashProvider.getHash(emailAddressNormalizer.normalize(input))

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized or hashed.")
    }

    func testNormalizeTrimming() {
        let input = " test@digitalaudience.io "
        let expectedOutput = "343e00121b70bc1a6ea179468f63beed780a92122402478037b9366a677ab24a"

        let output = sha256HashProvider.getHash(emailAddressNormalizer.normalize(input))

        XCTAssertEqual(output, expectedOutput, "The String is not correctly normalized or hashed.")
    }
}
