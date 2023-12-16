import ComposableArchitecture
import SwiftUI
import RulerPackage

struct MemoryBoard: View {
    let store: StoreOf<MemoryFeature>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Spacer()
                VStack(spacing: Dimensions.spacing) {
                    ForEach(viewStore.items, id: \.self) { horizontalArray in
                        HStack {
                            Spacer()
                            HStack(spacing: Dimensions.spacing) {
                                ForEach(horizontalArray) { item in
                                    Rectangle()
                                        .fill(viewStore.state.isSelected(item: item) ? Colors.customRed : .gray)
                                        .frame(width: Dimensions.itemWidth , height: Dimensions.itemHeight)
                                        .cornerRadius(Dimensions.cornerRadius)
                                        .onTapGesture {
                                            viewStore.send(.didTapItem(item))
                                        }
                                }
                            }
                            Spacer()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

extension MemoryBoard {
    enum Dimensions {
        static let itemHeight: CGFloat = 100.0
        static let itemWidth: CGFloat = 100.0
        static let spacing: CGFloat = 20.0
        static let cornerRadius: CGFloat = 10.0
    }
}


#Preview {
    let store = Store(initialState: MemoryFeature.State(items: Item.mocks)) {
        MemoryFeature()
      }
    return MemoryBoard(store: store)
}

/// Create a board of 6 rectnagles
/// Show all images for totally 5sec
///  Hide them with an animation
///  User taps one
///   User taps second
///   If they are the same -> Show a tick
///     if they are not show -> X

