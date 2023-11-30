import SwiftUI

public struct Colors {
    private init (){}
    
    public static let customGreen: Color = Color(hex: 0x34ebbd)
    public static let customRed: Color = Color(hex: 0xfc2c03)
    public static let random: Color = Color(hex: 0x1c3c03)
    public static let random2: Color = Color(hex: 0x1c3c77)

}


extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

