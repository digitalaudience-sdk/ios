import Foundation

protocol HashProvider {
    func getHash(_ input: String) -> String;
}
