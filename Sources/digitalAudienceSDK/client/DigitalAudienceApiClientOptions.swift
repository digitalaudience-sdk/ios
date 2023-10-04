import Foundation

public struct DigitalAudienceApiClientOptions {
    public let publisherId: String

    public init(_ publisherId : String) {
        self.publisherId = publisherId
    }
}
