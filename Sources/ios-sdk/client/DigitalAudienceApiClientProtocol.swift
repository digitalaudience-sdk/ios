import Foundation

protocol DigitalAudienceApiClientProtocol {
    public func sendAppleDeviceIdAsync(_ request : SendAppleDeviceIdRequest) -> URLSessionTask;
}
