import Foundation

public class EmailAddressNormalizer : StringNormalizer {
    public func normalize(_ input: String) -> String {
        input.regReplace("\\+[^@]+", "").trimmingCharacters(in: .whitespacesAndNewlines).lowercased();
    }
}
