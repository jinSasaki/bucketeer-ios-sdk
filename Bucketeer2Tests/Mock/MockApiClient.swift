import Foundation
@testable import Bucketeer2

final class MockApiClient: ApiClient {
    typealias GetEvaluationsHandler = ((JSON.User, String, Int64?, ((Result<GetEvaluationsResponse, Error>) -> Void)?)) -> Void
    typealias RegisterEventsHandler = ([Event], ((Result<RegisterEventsResponse, Error>) -> Void)?) -> Void

    let getEvaluationsHandler: GetEvaluationsHandler?
    let registerEventsHandler: RegisterEventsHandler?

    init(getEvaluationsHandler: GetEvaluationsHandler? = nil,
         registerEventsHandler: RegisterEventsHandler? = nil) {

        self.getEvaluationsHandler = getEvaluationsHandler
        self.registerEventsHandler = registerEventsHandler
    }

    func getEvaluations(user: JSON.User, userEvaluationsId: String, timeoutMillis: Int64?, completion: ((Result<GetEvaluationsResponse, Error>) -> Void)?) {
        getEvaluationsHandler?((user, userEvaluationsId, timeoutMillis, completion))
    }

    func registerEvents(events: [Event], completion: ((Result<RegisterEventsResponse, Error>) -> Void)?) {
        registerEventsHandler?(events, completion)
    }
}
