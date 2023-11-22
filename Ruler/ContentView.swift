import SwiftUI
import RulerPackage


struct MemoryItem: Equatable, Identifiable, Hashable {
    let id: String
    let name: String
    //let image: Image = Image(systemName: "star.fill")
}

extension MemoryItem {
    static let items = 
    [
        [
            MemoryItem(id: "1", name: "item1"),
            MemoryItem(id: "2", name: "item2"),
            MemoryItem(id: "3", name: "item3"),
        ],
        [
            MemoryItem(id: "4", name: "item4"),
            MemoryItem(id: "5", name: "item5"),
            MemoryItem(id: "6", name: "item6"),
        ],
        [
            MemoryItem(id: "7", name: "item7"),
            MemoryItem(id: "8", name: "item8"),
            MemoryItem(id: "9", name: "item9"),
        ]
    ]
}

struct MemoryBoard: View {
    @State var items = MemoryItem.items
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: Dimensions.spacing) {
                ForEach(items, id: \.self) { item in
                    HStack {
                        Spacer()
                        HStack(spacing: Dimensions.spacing) {
                            ForEach(item , id: \.self) { item in
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

