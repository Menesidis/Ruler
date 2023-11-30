import ComposableArchitecture

@Reducer
struct MemoryFeature {
    struct State: Equatable {
        let items = [Item]()
    }
    
    enum Action: Equatable {}
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}
