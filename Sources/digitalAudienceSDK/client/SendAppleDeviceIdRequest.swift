import Foundation

public struct SendAppleDeviceIdRequest {
    public let deviceId: String
    public let emailSha256: String
    public let categories: [String]

    public init(_ deviceId : String, _ emailSha256 : String, _ categories : [String]) {
        self.deviceId = deviceId;
        self.emailSha256 = emailSha256;
        self.categories = categories;
    }
}
