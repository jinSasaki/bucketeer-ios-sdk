import Foundation

protocol Component: AnyObject {
    var config: BKTConfig { get }
    var userHolder: UserHolder { get }
    var evaluationInteractor: EvaluationInteractor { get }
    var eventInteractor: EventInteractor { get }
}

final class ComponentImpl: Component {
    let dataModule: DataModule
    let evaluationInteractor: EvaluationInteractor
    let eventInteractor: EventInteractor

    init(dataModule: DataModule) {
        self.dataModule = dataModule
        self.evaluationInteractor = EvaluationInteractorImpl(
            apiClient: dataModule.apiClient,
            evaluationDao: dataModule.evaluationDao,
            defaults: dataModule.defaults
        )
        self.eventInteractor = EventInteractorImpl(
            eventsMaxBatchQueueCount: dataModule.config.eventsMaxBatchQueueCount,
            apiClient: dataModule.apiClient,
            eventDao: dataModule.eventDao,
            clock: dataModule.clock,
            idGenerator: dataModule.idGenerator,
            logger: dataModule.config.logger
        )
    }

    var config: BKTConfig {
        dataModule.config
    }

    var userHolder: UserHolder {
        dataModule.userHolder
    }
}
