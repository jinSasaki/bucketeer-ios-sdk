import Foundation

struct GetEvaluationsResponse: Codable {
    let data: GetEvaluationDataResponse
    var seconds: TimeInterval = 0
    var sizeByte: Int64 = 0
    var featureTag: String = ""

    private enum CodingKeys: String, CodingKey {
        case data
    }

    struct GetEvaluationDataResponse: Codable {
        let evaluations: UserEvaluations
        let user_evaluations_id: String
    }
}
