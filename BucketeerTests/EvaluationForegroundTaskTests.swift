import XCTest
@testable import Bucketeer

final class EvaluationForegroundTaskTests: XCTestCase {
    func testStartAndReceiveSuccess() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 10
        expectation.assertForOverFulfill = true
        let dispatchQueue = DispatchQueue(label: "default", qos: .default)

        let featureTag = "featureTag1"
        let evaluationInteractor = MockEvaluationInteractor(
            fetchHandler: { user, timeoutMillis, completion in
                XCTAssertEqual(user, .mock1)
                XCTAssertNil(timeoutMillis)
                completion?(.success(.init(data: .init(evaluations: .mock1, user_evaluations_id: "user_evaluation"), seconds: 1, sizeByte: 2, featureTag: featureTag)))
            }
        )
        let eventInteractor = MockEventInteractor(
            trackEvaluationSuccessHandler: { tag, seconds, sizeBytes in
                XCTAssertEqual(tag, featureTag)
                XCTAssertEqual(seconds, 1)
                XCTAssertEqual(sizeBytes, 2)
                expectation.fulfill()
            }
        )
        let config = BKTConfig.mock(
            eventsFlushInterval: 10,
            eventsMaxBatchQueueCount: 3,
            pollingInterval: 100,
            backgroundPollingInterval: 1000
        )
        let component = MockComponent(
            config: config,
            evaluationInteractor: evaluationInteractor,
            eventInteractor: eventInteractor
        )
        let task = EvaluationForegroundTask(
            component: component,
            queue: dispatchQueue
        )
        task.start()

        wait(for: [expectation], timeout: 0.1)
    }

    func testStartAndReceiveError() {
        let expectation = self.expectation(description: "")
        expectation.expectedFulfillmentCount = 6
        expectation.assertForOverFulfill = true
        let dispatchQueue = DispatchQueue(label: "default", qos: .default)

        let error: BKTError = .badRequest(message: "bad request")
        let featureTag = "featureTag1"
        let evaluationInteractor = MockEvaluationInteractor(
            fetchHandler: { user, timeoutMillis, completion in
                XCTAssertEqual(user, .mock1)
                XCTAssertNil(timeoutMillis)
                completion?(.failure(error: error, featureTag: featureTag))
            }
        )
        var count: Int = 0
        let eventInteractor = MockEventInteractor(
            trackEvaluationFailureHandler: { tag, e in
                XCTAssertEqual(tag, featureTag)
                XCTAssertEqual(e, error)
                XCTAssert(count < 6) // first and 5 retry
                expectation.fulfill()
                count += 1
            }
        )
        let config = BKTConfig(
            apiKey: "api_key_value",
            apiEndpoint: URL(string: "https://test.bucketeer.jp")!,
            featureTag: "featureTag1",
            eventsFlushInterval: 50,
            eventsMaxBatchQueueCount: 3,
            pollingInterval: 100,
            backgroundPollingInterval: 1000,
            sdkVersion: "0.0.2",
            appVersion: "1.2.3",
            logger: MockLogger()
        )
        let component = MockComponent(
            config: config,
            evaluationInteractor: evaluationInteractor,
            eventInteractor: eventInteractor
        )
        let task = EvaluationForegroundTask(
            component: component,
            queue: dispatchQueue,
            retryPollingInterval: 1,
            maxRetryCount: 5
        )
        task.start()

        wait(for: [expectation], timeout: 0.1)
    }

    func testStop() {
        let expectation = self.expectation(description: "")
        expectation.isInverted = true
        let dispatchQueue = DispatchQueue(label: "default", qos: .default)

        let error: BKTError = .badRequest(message: "bad request")
        let evaluationInteractor = MockEvaluationInteractor(
            fetchHandler: { user, timeoutMillis, completion in
                XCTAssertEqual(user, .mock1)
                XCTAssertNil(timeoutMillis)
                completion?(.failure(error: error, featureTag: "featureTag1"))
            }
        )
        let eventInteractor = MockEventInteractor(
            trackEvaluationFailureHandler: { featureTag, e in
                expectation.fulfill()
            }
        )
        let config = BKTConfig.mock(
            eventsFlushInterval: 50,
            eventsMaxBatchQueueCount: 3,
            pollingInterval: 100,
            backgroundPollingInterval: 1000
        )
        let component = MockComponent(
            config: config,
            evaluationInteractor: evaluationInteractor,
            eventInteractor: eventInteractor
        )
        let task = EvaluationForegroundTask(
            component: component,
            queue: dispatchQueue,
            retryPollingInterval: 1,
            maxRetryCount: 5
        )
        task.start()
        task.stop()

        wait(for: [expectation], timeout: 0.1)
    }
}