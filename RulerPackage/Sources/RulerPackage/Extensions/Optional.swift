import Foundation

public protocol OptionalValue {
    var isNil: Bool { get }
}

extension Optional: OptionalValue {
    public var isNil: Bool {
        return self == nil
    }
    
    public var isNotNil: Bool {
        return self != nil
    }
}
