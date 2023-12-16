import ComposableArchitecture

@Reducer
public struct MemoryFeature {
    public init() {}
    
    public struct State: Equatable {
        public let items: [[Item]]
        public var selectedItems: [Item.ID : Item] = [:]
        
        public init(items: [[Item]]) {
            self.items = items
        }
        
        public func isSelected(item: Item) -> Bool {
            let item = selectedItems[item.id]
            return item.isNotNil
        }
    }
    
    public enum Action: Equatable {
        case didTapItem(Item)
    }
    
    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case let .didTapItem(item):
                
                if let item = state.selectedItems[item.id] {
                    // Item already exist
                    state.selectedItems[item.id] = nil
                } else {
                    /// Save selected item
                    state.selectedItems[item.id] = item
                }
                return .none
            }
        }
    }
}
