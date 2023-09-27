import XCTest
@testable import ios_sdk

final class ios_sdkTests: XCTestCase {
    let publisherId = "Dap_220620" // TODO: provide your publisher ID here

    func testExample() throws {
        let digitalAudienceApiClientOptions = DigitalAudienceApiClientOptions(publisherId);
        let digitalAudienceApiClient = DigitalAudienceApiClient(digitalAudienceApiClientOptions);

        digitalAudienceApiClient.sendAppleDeviceIdAsync(
                "510F1BA6-8A92-4F61-8451-E9A040ECD177" /* deviceId */,
                "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08" /* emailSha256*/,
                [String("1"), String("2")] /* categories */
        ).resume();
    }
}
