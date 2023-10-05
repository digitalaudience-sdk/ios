import Foundation

protocol DigitalAudienceApiClientProtocol {
    func sendAppleDeviceIdAsync(_ request : SendAppleDeviceIdRequest) -> URLSessionTask;
}
