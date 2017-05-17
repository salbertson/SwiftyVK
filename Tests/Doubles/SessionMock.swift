@testable import SwiftyVK

final class SessionMock: Session {
    let id = String.random(10)
    var config = SessionConfig()
    var state = SessionState.initiated
    var isDefault = false
    
    func activate(appId: String, callbacks: SessionCallbacks) throws {}
    
    func makeDefault() {}
    
    public func send(request: SwiftyVK.Request, callbacks: SwiftyVK.Callbacks) -> Task {
        return TaskMock()
    }
}
