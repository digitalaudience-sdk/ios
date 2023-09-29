# digitalAudience iOS SDK

Here is an example of the code you can add into your application to access digitalAudience endpoints and provide some data 

```
final class App {
    let publisherId = "" // TODO: provide your publisher ID here

    func testExample() throws {
        let deviceId = "00000000-0000-0000-0000-000000000000"; // TODO: replace with your logic here to get user's device ID

        let emailAddressNormalizer : StringNormalizer = EmailAddressNormalizer();
        let sha256HashProvider : HashProvider = Sha256HashProvider();

        let emailAddress = "test@digitalaudience.io"; // TODO: replace with your logic to get user's email address
        let normalizedEmailAddress = emailAddressNormalizer.normalize(emailAddress);
        let emailSha256 = sha256HashProvider.getHash(normalizedEmailAddress);

        let categories = [String("1"), String("2")]; // TODO: replace with your logic to get categories you want to associate user with

        let digitalAudienceApiClientOptions = DigitalAudienceApiClientOptions(publisherId);
        let digitalAudienceApiClient : DigitalAudienceApiClientProtocol = DigitalAudienceApiClient(digitalAudienceApiClientOptions);

        let sendAppleDeviceIdRequest = SendAppleDeviceIdRequest(deviceId, emailSha256, categories);

        digitalAudienceApiClient.sendAppleDeviceIdAsync(sendAppleDeviceIdRequest).resume();
    }
}
```