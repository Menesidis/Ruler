import Foundation

public struct Item: Equatable, Identifiable, Hashable {
    public let id: String
    public let name: String
    //let image: Image = Image(systemName: "star.fill")
}

extension Item {
    #if DEBUG
    public static let mocks =
    [
        [
            Item(id: "1", name: "item1"),
            Item(id: "2", name: "item2"),
            Item(id: "3", name: "item3"),
        ],
        [
            Item(id: "4", name: "item4"),
            Item(id: "5", name: "item5"),
            Item(id: "6", name: "item6"),
        ],
        [
            Item(id: "7", name: "item7"),
            Item(id: "8", name: "item8"),
            Item(id: "9", name: "item9"),
        ]
    ]
    #endif
}
