import Foundation
#if os(Windows)
import FoundationNetworking
#endif

public class DigitalAudienceApiClient : DigitalAudienceApiClientProtocol {
    private let digitalAudienceHost = "target.digitalaudience.io"

    private let options: DigitalAudienceApiClientOptions

    public init(_ options: DigitalAudienceApiClientOptions) {
        self.options = options
    }

    private func createPublisherHttpRequest(_ deviceId: String, _ emailSha256: String, _ categories: [String]) -> URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = digitalAudienceHost
        components.path = "/bakery/bake"

        components.queryItems = [
            URLQueryItem(name: "publisher", value: options.publisherId),
            URLQueryItem(name: "did", value: deviceId),
            URLQueryItem(name: "dtype", value: "IDFA"),
            URLQueryItem(name: "email", value: emailSha256),
            URLQueryItem(name: "category", value: "[\(categories.joined(separator: ","))]"),
        ]

        return components.url!
    }

    public func sendAppleDeviceIdAsync(_ request : SendAppleDeviceIdRequest) -> URLSessionTask {
        let request = createPublisherHttpRequest(request.deviceId, request.emailSha256, request.categories);

        return URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                // Handle HTTP request error
            } else if let data = data {
                // Handle HTTP request response
            } else {
                // Handle unexpected error
            }
        }
    }
}
