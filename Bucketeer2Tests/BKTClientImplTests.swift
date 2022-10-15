import XCTest
@testable import Bucketeer2

final class BKTClientImplTests: XCTestCase {

    func testCurrentUser() {
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        XCTAssertEqual(client.currentUser(), User.mock1.toBKTUser())
    }

    func testUpdateUserAttributes() {
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        let attributes: [String: String] = ["key": "updated"]
        client.updateUserAttributes(attributes: attributes)
        XCTAssertEqual(client.currentUser()?.attributes, attributes)
    }

    func testFetchEvaluationsSuccess() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 3
        var count = 0
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, userEvaluationsId, timeoutMillis, handler) in
                XCTAssertEqual(user, .mock1)
                XCTAssertEqual(userEvaluationsId, "")
                XCTAssertEqual(timeoutMillis, nil)
                handler?(.success(.init(
                    data: .init(
                        evaluations: .mock1,
                        user_evaluations_id: "id"
                    ),
                    seconds: 2,
                    sizeByte: 3,
                    featureTag: "feature"
                )))
                expectation.fulfill()
            }),
            eventDao: MockEventDao(addEventsHandler: { events in
                XCTAssertEqual(events, [
                    Event(
                        id: "mock1",
                        event: .metrics(.init(
                            timestamp: 1,
                            event: .getEvaluationLatency(.init(
                                labels: ["tag": "feature"],
                                duration: .init(seconds: 2)
                            )),
                            type: .getEvaluationLatency
                        )),
                        type: .metrics
                    ),
                    Event(
                        id: "mock2",
                        event: .metrics(.init(
                            timestamp: 1,
                            event: .getEvaluationSize(.init(
                                labels: ["tag": "feature"],
                                size_byte: 3
                            )),
                            type: .getEvaluationSize
                        )),
                        type: .metrics
                    )
                ])
                expectation.fulfill()
            }),
            idGenerator: MockIdGenerator(identifier: {
                count += 1
                return "mock\(count)"
            }),
            clock: MockClock(timestamp: 1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { error in
            XCTAssertEqual(error, nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testFetchEvaluationsFailure() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 3
        var count = 0
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, userEvaluationsId, timeoutMillis, handler) in
                XCTAssertEqual(user, .mock1)
                XCTAssertEqual(userEvaluationsId, "")
                XCTAssertEqual(timeoutMillis, nil)
                handler?(.failure(error: .timeout(message: "timeout", error: NSError()), featureTag: "feature"))
                expectation.fulfill()
            }),
            eventDao: MockEventDao(addEventHandler: { event in
                let expected = Event(
                    id: "mock1",
                    event: .metrics(.init(
                        timestamp: 1,
                        event: .timeoutErrorCount(.init(tag: "feature")),
                        type: .timeoutErrorCount
                    )),
                    type: .metrics
                )
                XCTAssertEqual(expected, event)
                expectation.fulfill()
            }),
            idGenerator: MockIdGenerator(identifier: {
                count += 1
                return "mock\(count)"
            }),
            clock: MockClock(timestamp: 1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { error in
            XCTAssertEqual(error, .timeout(message: "timeout", error: NSError()))
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testFlushSuccess() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 3
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(registerEventsHandler: { events, handler in
                XCTAssertEqual(events, [.mockGoal1, .mockEvaluation1])
                handler?(.success(.init(data: .init(errors: [:]))))
                expectation.fulfill()
            }),
            eventDao: MockEventDao(getEventsHandler: {
                defer { expectation.fulfill() }
                return [.mockGoal1, .mockEvaluation1]
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.flush { error in
            XCTAssertEqual(error, nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testFlushFailure() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 3
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(registerEventsHandler: { events, handler in
                XCTAssertEqual(events, [.mockGoal1, .mockEvaluation1])
                handler?(.failure(.apiServer(message: "unknown")))
                expectation.fulfill()
            }),
            eventDao: MockEventDao(getEventsHandler: {
                defer { expectation.fulfill() }
                return [.mockGoal1, .mockEvaluation1]
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.flush { error in
            XCTAssertEqual(error, .apiServer(message: "unknown"))
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testEvaluationDetailsEmpty() {
        let expectation = self.expectation(description: "")
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.evaluationDetails(featureId: "feature") { evaluation in
            XCTAssertEqual(evaluation, nil)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testEvaluationDetails() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 3
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock1)
                handler?(.success(.init(data: .init(evaluations: .mock1, user_evaluations_id: "new"))))
                expectation.fulfill()
            }),
            evaluationDao: MockEvaluationDao(deleteAllAndInsertHandler: { id, evaluations in
                XCTAssertEqual(id, User.mock1.id)
                XCTAssertEqual(evaluations, [.mock1, .mock2])
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            client.evaluationDetails(featureId: "feature1") { evaluation in
                let expected = BKTEvaluation(
                    id: "evaluation1",
                    featureId: "feature1",
                    featureVersion: 1,
                    userId: User.mock1.id,
                    variationId: "variation1",
                    variationValue: "variation_value1",
                    reason: .rule
                )
                XCTAssertEqual(evaluation, expected)
                expectation.fulfill()
            }
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testTrackGoal() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 1
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            eventDao: MockEventDao(addEventHandler: { event in
                XCTAssertEqual(event, Event(
                    id: "id",
                    event: .goal(.init(
                        timestamp: 1,
                        goal_id: "goal_id",
                        user_id: User.mock1.id,
                        value: 20,
                        user: .mock1,
                        tag: "featureTag1",
                        source_id: .ios
                    )),
                    type: .goal
                ))
                expectation.fulfill()
            }),
            idGenerator: MockIdGenerator(identifier: "id"),
            clock: MockClock(timestamp: 1)
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.track(goalId: "goal_id", value: 20)
        wait(for: [expectation], timeout: 0.1)
    }

    func testStringVariationAsDefault() {
        let dataModule = MockDataModule()
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        let string = client.stringVariation(featureId: "feature1", defaultValue: "")
        XCTAssertEqual(string, "")
    }

    func testStringVariation() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 2
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock1)
                handler?(.success(.init(data: .init(evaluations: .mock1, user_evaluations_id: "new"))))
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            let string = client.stringVariation(featureId: "feature1", defaultValue: "")
            XCTAssertEqual(string, "variation_value1")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testIntVariation() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 2
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock1)
                handler?(.success(.init(data: .init(evaluations: .mock1, user_evaluations_id: "new"))))
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            let value = client.intVariation(featureId: "feature2", defaultValue: 0)
            XCTAssertEqual(value, 2)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testDoubleVariation() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 2
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock1),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock1)
                handler?(.success(.init(data: .init(evaluations: .mock2, user_evaluations_id: "new"))))
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            let value = client.doubleVariation(featureId: "feature3", defaultValue: 0)
            XCTAssertEqual(value, 3.0)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testBoolVariation() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 2
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock2),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock2)
                handler?(.success(.init(data: .init(evaluations: .mock2, user_evaluations_id: "new"))))
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            let value = client.boolVariation(featureId: "feature4", defaultValue: false)
            XCTAssertEqual(value, true)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }

    func testJSONVariation() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 2
        let dataModule = MockDataModule(
            userHolder: .init(user: .mock2),
            apiClient: MockApiClient(getEvaluationsHandler: { (user, _, _, handler) in
                XCTAssertEqual(user, .mock2)
                handler?(.success(.init(data: .init(evaluations: .mock2, user_evaluations_id: "new"))))
                expectation.fulfill()
            })
        )
        let client = BKTClientImpl(dataModule: dataModule, dispatchQueue: .global())
        client.fetchEvaluations(timeoutMillis: nil) { _ in
            let value = client.jsonVariation(featureId: "feature5", defaultValue: [:])
            XCTAssertEqual(value, ["key": "value"])
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }
}