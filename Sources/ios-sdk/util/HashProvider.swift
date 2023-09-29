import Foundation

protocol HashProvider {
    public func getHash(_ input: String) -> String;
}
