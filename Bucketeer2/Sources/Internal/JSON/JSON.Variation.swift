import Foundation

extension JSON {
    struct Variation: Codable, Hashable {
        let id: String
        var value: String
        let name: String?
        let description: String?
    }
}