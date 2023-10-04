import Foundation

public class EmailAddressNormalizer : StringNormalizer {
    public func normalize(_ input: String) -> String {
        input.regReplace("\\+[^@]+", "").trimmingCharacters(in: .whitespacesAndNewlines).lowercased();
    }
}

private extension String {
    func regReplace(_ pattern: String, _ replaceWith: String = "") -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive, .anchorsMatchLines])
            let range = NSRange(self.startIndex..., in: self)

            return regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: replaceWith)
        } catch { return self }
    }
}
