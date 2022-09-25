import XCTest
@testable import Bucketeer2

final class EventInteractorTests: XCTestCase {

    func testTrackEvaluationEvent() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            let expected = Event(
                id: "id",
                event: .evaluation(.init(
                    timestamp: 1,
                    feature_id: Evaluation.mock1.feature_id,
                    feature_version: Evaluation.mock1.feature_version,
                    user_id: JSON.User.mock1.id,
                    variation_id: Evaluation.mock1.variation_id,
                    user: .mock1,
                    reason: Evaluation.mock1.reason,
                    tag: "featureTag1",
                    source_id: .ios
                )),
                type: .evaluation
            )
            XCTAssertEqual(events, [expected])
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackEvaluationEvent(
            featureTag: "featureTag1",
            user: .mock1,
            evaluation: .mock1
        )
        wait(for: [expectation], timeout: 1)
    }

    func testTrackDefaultEvaluationEvent() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            let expected = Event(
                id: "id",
                event: .evaluation(.init(
                    timestamp: 1,
                    feature_id: "featureId1",
                    user_id: JSON.User.mock1.id,
                    user: .mock1,
                    reason: .init(type: .client),
                    tag: "featureTag1",
                    source_id: .ios
                )),
                type: .evaluation
            )
            XCTAssertEqual(events, [expected])
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackDefaultEvaluationEvent(
            featureTag: "featureTag1",
            user: .mock1,
            featureId: "featureId1"
        )
        wait(for: [expectation], timeout: 1)
    }

    func testTrackGoalEvent() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            let expected = Event(
                id: "id",
                event: .goal(.init(
                    timestamp: 1,
                    goal_id: "goalId1",
                    user_id: JSON.User.mock1.id,
                    value: 1,
                    user: .mock1,
                    tag: "featureTag1",
                    source_id: .ios
                )),
                type: .goal
            )
            XCTAssertEqual(events, [expected])
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackGoalEvent(
            featureTag: "featureTag1",
            user: .mock1,
            goalId: "goalId1",
            value: 1
        )
        wait(for: [expectation], timeout: 1)
    }

    func testTrackFetchEvaluationsSuccess() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 2)
            let expected: [Event] = [
                Event(
                    id: "id",
                    event: .metrics(.init(
                        timestamp: 1,
                        event: .getEvaluationLatency(.init(
                            labels: ["tag": "featureTag1"],
                            duration: .init(seconds: 10)
                        )),
                        type: .getEvaluationLatency
                    )),
                    type: .metrics
                ),
                Event(
                    id: "id",
                    event: .metrics(.init(
                        timestamp: 1,
                        event: .getEvaluationSize(.init(
                            labels: ["tag": "featureTag1"],
                            size_byte: 100
                        )),
                        type: .getEvaluationSize
                    )),
                    type: .metrics
                )
            ]
            XCTAssertEqual(events, expected)
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackFetchEvaluationsSuccess(
            featureTag: "featureTag1",
            seconds: 10,
            sizeByte: 100
        )
        wait(for: [expectation], timeout: 1)
    }

    enum SomeError: Error {
        case a
    }

    func testTrackFetchEvaluationsFailureWithTimeout() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            let expected: [Event] = [
                Event(
                    id: "id",
                    event: .metrics(.init(
                        timestamp: 1,
                        event: .timeoutErrorCount(.init(tag: "featureTag1")),
                        type: .timeoutErrorCount
                    )),
                    type: .metrics
                )
            ]
            XCTAssertEqual(events, expected)
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackFetchEvaluationsFailure(
            featureTag: "featureTag1",
            error: .timeout(message: "timeout", error: SomeError.a)
        )
        wait(for: [expectation], timeout: 1)
    }

    func testTrackFetchEvaluationsFailureWithOtherError() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let api = MockApiClient()
        let dao = MockEventDao()
        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            let expected: [Event] = [
                Event(
                    id: "id",
                    event: .metrics(.init(
                        timestamp: 1,
                        event: .internalErrorCount(.init(tag: "featureTag1")),
                        type: .internalErrorCount
                    )),
                    type: .metrics
                )
            ]
            XCTAssertEqual(events, expected)
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        try interactor.trackFetchEvaluationsFailure(
            featureTag: "featureTag1",
            error: .badRequest(message: "bad request")
        )
        wait(for: [expectation], timeout: 1)
    }

    func testSendEventsSuccess() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 3

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let addedEvents: [Event] = [.mockEvaluation1, .mockGoal1]
        let dao = MockEventDao()
        try dao.add(events: addedEvents)
        let api = MockApiClient(registerEventsHandler: { events, completion in
            XCTAssertEqual(events.count, 2)
            XCTAssertEqual(events, addedEvents)
            completion?(.success(.init(data: .init(errors: [:]))))
            expectation.fulfill()
        })

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 0)
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(force: true, completion: { result in
            switch result {
            case .success(let success):
                XCTAssertTrue(success)
            case .failure:
                XCTFail()
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)
    }

    func testSendEventsFailure() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 2

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let addedEvents: [Event] = [.mockEvaluation1, .mockGoal1, .mockGoal2]
        let dao = MockEventDao()
        try dao.add(events: addedEvents)

        let error = BKTError.badRequest(message: "bad request")
        let api = MockApiClient(registerEventsHandler: { events, completion in
            XCTAssertEqual(events, addedEvents)
            completion?(.failure(error))
            expectation.fulfill()
        })

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener()
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(completion: { result in
            switch result {
            case .success:
                XCTFail()
            case .failure(let e):
                XCTAssertEqual(e as? BKTError, error)
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)
    }

    func testSendEventsCurrentIsEmpty() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 1

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let dao = MockEventDao()
        let api = MockApiClient()

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener()
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(completion: { result in
            switch result {
            case .success(let success):
                XCTAssertFalse(success)
            case .failure:
                XCTFail()
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)
    }

    func testSendEventsNotEnoughEvents() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 1

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let addedEvents: [Event] = [.mockEvaluation1, .mockGoal1]
        let dao = MockEventDao()
        try dao.add(events: addedEvents)
        let api = MockApiClient()

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener()
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(completion: { result in
            switch result {
            case .success(let success):
                XCTAssertFalse(success)
            case .failure:
                XCTFail()
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)    }

    func testSendEventsForce() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 3

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let addedEvents: [Event] = [.mockEvaluation1]
        let dao = MockEventDao()
        try dao.add(events: addedEvents)
        let api = MockApiClient(registerEventsHandler: { events, completion in
            XCTAssertEqual(events.count, 1)
            XCTAssertEqual(events, addedEvents)
            completion?(.success(.init(data: .init(errors: [:]))))
            expectation.fulfill()
        })

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 0)
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(force: true, completion: { result in
            switch result {
            case .success(let success):
                XCTAssertTrue(success)
            case .failure:
                XCTFail()
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)
    }

    func testSendEventsRetriableError() throws {
        let expectation = XCTestExpectation()
        expectation.assertForOverFulfill = true
        expectation.expectedFulfillmentCount = 3

        let clock = MockClock(timestamp: 1)
        let idGenerator = MockIdGenerator(identifier: "id")
        let addedEvents: [Event] = [.mockEvaluation1, .mockGoal1]
        let dao = MockEventDao()
        try dao.add(events: addedEvents)
        let api = MockApiClient(registerEventsHandler: { events, completion in
            XCTAssertEqual(events.count, 2)
            XCTAssertEqual(events, addedEvents)
            completion?(.success(.init(data: .init(
                errors: [
                    Event.mockEvaluation1.id: .init(retriable: true, message: "message")
                ]))))
            expectation.fulfill()
        })

        let logger = MockLogger()
        let interactor = EventInteractor(
            eventsMaxBatchQueueCount: 3,
            apiClient: api,
            eventDao: dao,
            clock: clock,
            idGenerator: idGenerator,
            logger: logger
        )
        let listener = MockEventUpdateListener { events in
            XCTAssertEqual(events.count, 1)
            XCTAssertEqual(events, [.mockEvaluation1])
            expectation.fulfill()
        }
        interactor.set(eventUpdateListener: listener)
        interactor.sendEvents(force: true, completion: { result in
            switch result {
            case .success(let success):
                XCTAssertTrue(success)
            case .failure:
                XCTFail()
            }
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 1)
    }
}
