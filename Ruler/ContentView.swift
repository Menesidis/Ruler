import SwiftUI
import RulerPackage

struct MemoryBoard: View {
    @State var items = Item.mocks
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: Dimensions.spacing) {
                ForEach(items, id: \.self) { item in
                    HStack {
                        Spacer()
                        HStack(spacing: Dimensions.spacing) {
                            ForEach(item) { item in
                                Text(item.name)
                                    .frame(width: Dimensions.itemWidth , height: Dimensions.itemHeight)
                                    .foregroundColor(Colors.customRed)
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

extension MemoryBoard {
    enum Dimensions {
        static let itemHeight: CGFloat = 100.0
        static let itemWidth: CGFloat = 100.0
        static let spacing: CGFloat = 20.0

    }
}


#Preview {
    MemoryBoard()
}

/// Create a board of 6 rectnagles
/// Show all images for totally 5sec
///  Hide them with an animation
///  User taps one
///   User taps second
///   If they are the same -> Show a tick
///     if they are not show -> X

