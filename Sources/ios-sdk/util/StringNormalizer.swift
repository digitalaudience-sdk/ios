import Foundation

protocol StringNormalizer {
    public func normalize(_ input: String) -> String;
}

private extension String {
    func regReplace(_ pattern: String, _ replaceWith: String = "") -> String {
        let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive, .anchorsMatchLines])
        let range = NSRange(self.startIndex..., in: self)

        return regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: replaceWith)
    }
}
