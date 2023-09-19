import Foundation

/*
 * Do not edit this file.
 * Generated from Xcode's Command-Line Tools databases - Xcode 15.0 (15A240d).
 **/

/// The representation of the device running - it could be either physical or simulated.
/// > Generated from Xcode's Command-Line Tools databases - Xcode 15.0 (15A240d).
public struct Device: Identifiable, Hashable, CaseIterable {
    /// The identifier for the device.
    public let id: String
    /// The known/commercial name of the device.
    public let model: String

    /// Creates a representation of a device.
    /// - Parameters:
    ///   - id: The identifier for the device.
    ///   - model: The known/commercial name of the device.
    init(id: String, model: String) {
        self.id = id
        self.model = model
    }

    /// Creates a representation of the device found in Xcode's databases based on the given device identifier.
    /// - Parameter id: The identifier for the device.
    init(id: String) {
        if let device = Device.allCases.first(where: { $0.id == id }) {
            self = device
        } else if let simulator = Device.simulators.first(where: { $0.id == id }) {
            self = simulator
        } else {
            self = .unknown
        }
    }

    /// Simulator instances.
    static let simulators: [Device] = {
        ["i386", "x86_64", "arm64"]
            .map { deviceId in
                Device(id: deviceId, model: "Simulator")
            }
    }()

    /// The device identifier read from the system info.
    static let deviceIdentifier: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        return String(
            cString: [UInt8](
                Data(
                    bytes: &systemInfo.machine,
                    count: Int(_SYS_NAMELEN)
                )
            )
        )
    }()

    /// It is `true` when the device does not match either simulators or physical devices.
    public var isUnknown: Bool {
        self == .unknown
    }

    /// It is `true` when running on a simulator instance.
    public var isSimulator: Bool {
        Device.simulators.contains(self)
    }

    /// It is `true` when running on a physical device.
    public var isDevice: Bool {
        !isSimulator && !isUnknown
    }

    /// The current instance of the device that is running.
    public static let current = Device(id: deviceIdentifier)
    /// An unknown device instance.
    public static let unknown = Device(id: "unknown", model: "unknown")
    // # iPhoneOS
    /// Mac
    public static let macFamily20_1 = Device(id: "MacFamily20,1", model: "Mac")
    /// Apple Vision
    public static let realityFamily22_1 = Device(id: "RealityFamily22,1", model: "Apple Vision")
    /// iPad mini (5th generation)
    public static let iPad11_1 = Device(id: "iPad11,1", model: "iPad mini (5th generation)")
    /// iPad mini (5th generation)
    public static let iPad11_2 = Device(id: "iPad11,2", model: "iPad mini (5th generation)")
    /// iPad Air (3rd generation)
    public static let iPad11_3 = Device(id: "iPad11,3", model: "iPad Air (3rd generation)")
    /// iPad Air (3rd generation)
    public static let iPad11_4 = Device(id: "iPad11,4", model: "iPad Air (3rd generation)")
    /// iPad (8th generation)
    public static let iPad11_6 = Device(id: "iPad11,6", model: "iPad (8th generation)")
    /// iPad (8th generation)
    public static let iPad11_7 = Device(id: "iPad11,7", model: "iPad (8th generation)")
    /// iPad (9th generation)
    public static let iPad12_1 = Device(id: "iPad12,1", model: "iPad (9th generation)")
    /// iPad (9th generation)
    public static let iPad12_2 = Device(id: "iPad12,2", model: "iPad (9th generation)")
    /// iPad Air (4th generation)
    public static let iPad13_1 = Device(id: "iPad13,1", model: "iPad Air (4th generation)")
    /// iPad Pro (12.9-inch) (5th generation)
    public static let iPad13_10 = Device(id: "iPad13,10", model: "iPad Pro (12.9-inch) (5th generation)")
    /// iPad Pro (12.9-inch) (5th generation)
    public static let iPad13_11 = Device(id: "iPad13,11", model: "iPad Pro (12.9-inch) (5th generation)")
    /// iPad Air (5th generation)
    public static let iPad13_16 = Device(id: "iPad13,16", model: "iPad Air (5th generation)")
    /// iPad Air (5th generation)
    public static let iPad13_17 = Device(id: "iPad13,17", model: "iPad Air (5th generation)")
    /// iPad (10th generation)
    public static let iPad13_18 = Device(id: "iPad13,18", model: "iPad (10th generation)")
    /// iPad (10th generation)
    public static let iPad13_19 = Device(id: "iPad13,19", model: "iPad (10th generation)")
    /// iPad Air (4th generation)
    public static let iPad13_2 = Device(id: "iPad13,2", model: "iPad Air (4th generation)")
    /// iPad Pro (11-inch) (3rd generation)
    public static let iPad13_4 = Device(id: "iPad13,4", model: "iPad Pro (11-inch) (3rd generation)")
    /// iPad Pro (11-inch) (3rd generation)
    public static let iPad13_5 = Device(id: "iPad13,5", model: "iPad Pro (11-inch) (3rd generation)")
    /// iPad Pro (11-inch) (3rd generation)
    public static let iPad13_6 = Device(id: "iPad13,6", model: "iPad Pro (11-inch) (3rd generation)")
    /// iPad Pro (11-inch) (3rd generation)
    public static let iPad13_7 = Device(id: "iPad13,7", model: "iPad Pro (11-inch) (3rd generation)")
    /// iPad Pro (12.9-inch) (5th generation)
    public static let iPad13_8 = Device(id: "iPad13,8", model: "iPad Pro (12.9-inch) (5th generation)")
    /// iPad Pro (12.9-inch) (5th generation)
    public static let iPad13_9 = Device(id: "iPad13,9", model: "iPad Pro (12.9-inch) (5th generation)")
    /// iPad mini (6th generation)
    public static let iPad14_1 = Device(id: "iPad14,1", model: "iPad mini (6th generation)")
    /// iPad mini (6th generation)
    public static let iPad14_2 = Device(id: "iPad14,2", model: "iPad mini (6th generation)")
    /// iPad Pro (11-inch) (4th generation)
    public static let iPad14_3_A = Device(id: "iPad14,3-A", model: "iPad Pro (11-inch) (4th generation)")
    /// iPad Pro (11-inch) (4th generation)
    public static let iPad14_3_B = Device(id: "iPad14,3-B", model: "iPad Pro (11-inch) (4th generation)")
    /// iPad Pro (11-inch) (4th generation)
    public static let iPad14_4_A = Device(id: "iPad14,4-A", model: "iPad Pro (11-inch) (4th generation)")
    /// iPad Pro (11-inch) (4th generation)
    public static let iPad14_4_B = Device(id: "iPad14,4-B", model: "iPad Pro (11-inch) (4th generation)")
    /// iPad Pro (12.9-inch) (6th generation)
    public static let iPad14_5_A = Device(id: "iPad14,5-A", model: "iPad Pro (12.9-inch) (6th generation)")
    /// iPad Pro (12.9-inch) (6th generation)
    public static let iPad14_5_B = Device(id: "iPad14,5-B", model: "iPad Pro (12.9-inch) (6th generation)")
    /// iPad Pro (12.9-inch) (6th generation)
    public static let iPad14_6_A = Device(id: "iPad14,6-A", model: "iPad Pro (12.9-inch) (6th generation)")
    /// iPad Pro (12.9-inch) (6th generation)
    public static let iPad14_6_B = Device(id: "iPad14,6-B", model: "iPad Pro (12.9-inch) (6th generation)")
    /// iPad Pro (12.9-inch) (2nd generation)
    public static let iPad7_1 = Device(id: "iPad7,1", model: "iPad Pro (12.9-inch) (2nd generation)")
    /// iPad (7th generation)
    public static let iPad7_11 = Device(id: "iPad7,11", model: "iPad (7th generation)")
    /// iPad (7th generation)
    public static let iPad7_12 = Device(id: "iPad7,12", model: "iPad (7th generation)")
    /// iPad Pro (12.9-inch) (2nd generation)
    public static let iPad7_2 = Device(id: "iPad7,2", model: "iPad Pro (12.9-inch) (2nd generation)")
    /// iPad Pro (10.5-inch)
    public static let iPad7_3 = Device(id: "iPad7,3", model: "iPad Pro (10.5-inch)")
    /// iPad Pro (10.5-inch)
    public static let iPad7_4 = Device(id: "iPad7,4", model: "iPad Pro (10.5-inch)")
    /// iPad (6th generation)
    public static let iPad7_5 = Device(id: "iPad7,5", model: "iPad (6th generation)")
    /// iPad (6th generation)
    public static let iPad7_6 = Device(id: "iPad7,6", model: "iPad (6th generation)")
    /// iPad Pro (11-inch)
    public static let iPad8_1 = Device(id: "iPad8,1", model: "iPad Pro (11-inch)")
    /// iPad Pro (11-inch) (2nd generation)
    public static let iPad8_10 = Device(id: "iPad8,10", model: "iPad Pro (11-inch) (2nd generation)")
    /// iPad Pro (12.9-inch) (4th generation)
    public static let iPad8_11 = Device(id: "iPad8,11", model: "iPad Pro (12.9-inch) (4th generation)")
    /// iPad Pro (12.9-inch) (4th generation)
    public static let iPad8_12 = Device(id: "iPad8,12", model: "iPad Pro (12.9-inch) (4th generation)")
    /// iPad Pro (11-inch)
    public static let iPad8_2 = Device(id: "iPad8,2", model: "iPad Pro (11-inch)")
    /// iPad Pro (11-inch)
    public static let iPad8_3 = Device(id: "iPad8,3", model: "iPad Pro (11-inch)")
    /// iPad Pro (11-inch)
    public static let iPad8_4 = Device(id: "iPad8,4", model: "iPad Pro (11-inch)")
    /// iPad Pro (12.9-inch) (3rd generation)
    public static let iPad8_5 = Device(id: "iPad8,5", model: "iPad Pro (12.9-inch) (3rd generation)")
    /// iPad Pro (12.9-inch) (3rd generation)
    public static let iPad8_6 = Device(id: "iPad8,6", model: "iPad Pro (12.9-inch) (3rd generation)")
    /// iPad Pro (12.9-inch) (3rd generation)
    public static let iPad8_7 = Device(id: "iPad8,7", model: "iPad Pro (12.9-inch) (3rd generation)")
    /// iPad Pro (12.9-inch) (3rd generation)
    public static let iPad8_8 = Device(id: "iPad8,8", model: "iPad Pro (12.9-inch) (3rd generation)")
    /// iPad Pro (11-inch) (2nd generation)
    public static let iPad8_9 = Device(id: "iPad8,9", model: "iPad Pro (11-inch) (2nd generation)")
    /// iPhone XS
    public static let iPhone11_2 = Device(id: "iPhone11,2", model: "iPhone XS")
    /// iPhone XS Max
    public static let iPhone11_4 = Device(id: "iPhone11,4", model: "iPhone XS Max")
    /// iPhone XS Max
    public static let iPhone11_6 = Device(id: "iPhone11,6", model: "iPhone XS Max")
    /// iPhone XR
    public static let iPhone11_8 = Device(id: "iPhone11,8", model: "iPhone XR")
    /// iPhone 11
    public static let iPhone12_1 = Device(id: "iPhone12,1", model: "iPhone 11")
    /// iPhone 11 Pro
    public static let iPhone12_3 = Device(id: "iPhone12,3", model: "iPhone 11 Pro")
    /// iPhone 11 Pro Max
    public static let iPhone12_5 = Device(id: "iPhone12,5", model: "iPhone 11 Pro Max")
    /// iPhone SE (2nd generation)
    public static let iPhone12_8 = Device(id: "iPhone12,8", model: "iPhone SE (2nd generation)")
    /// iPhone 12 mini
    public static let iPhone13_1 = Device(id: "iPhone13,1", model: "iPhone 12 mini")
    /// iPhone 12
    public static let iPhone13_2 = Device(id: "iPhone13,2", model: "iPhone 12")
    /// iPhone 12 Pro
    public static let iPhone13_3 = Device(id: "iPhone13,3", model: "iPhone 12 Pro")
    /// iPhone 12 Pro Max
    public static let iPhone13_4 = Device(id: "iPhone13,4", model: "iPhone 12 Pro Max")
    /// iPhone 13 Pro
    public static let iPhone14_2 = Device(id: "iPhone14,2", model: "iPhone 13 Pro")
    /// iPhone 13 Pro Max
    public static let iPhone14_3 = Device(id: "iPhone14,3", model: "iPhone 13 Pro Max")
    /// iPhone 13 mini
    public static let iPhone14_4 = Device(id: "iPhone14,4", model: "iPhone 13 mini")
    /// iPhone 13
    public static let iPhone14_5 = Device(id: "iPhone14,5", model: "iPhone 13")
    /// iPhone SE (3rd generation)
    public static let iPhone14_6 = Device(id: "iPhone14,6", model: "iPhone SE (3rd generation)")
    /// iPhone 14
    public static let iPhone14_7 = Device(id: "iPhone14,7", model: "iPhone 14")
    /// iPhone 14 Plus
    public static let iPhone14_8 = Device(id: "iPhone14,8", model: "iPhone 14 Plus")
    /// iPhone 14 Pro
    public static let iPhone15_2 = Device(id: "iPhone15,2", model: "iPhone 14 Pro")
    /// iPhone 14 Pro Max
    public static let iPhone15_3 = Device(id: "iPhone15,3", model: "iPhone 14 Pro Max")
    /// iPhone 15
    public static let iPhone15_4 = Device(id: "iPhone15,4", model: "iPhone 15")
    /// iPhone 15 Plus
    public static let iPhone15_5 = Device(id: "iPhone15,5", model: "iPhone 15 Plus")
    /// iPhone 15 Pro
    public static let iPhone16_1 = Device(id: "iPhone16,1", model: "iPhone 15 Pro")
    /// iPhone 15 Pro Max
    public static let iPhone16_2 = Device(id: "iPhone16,2", model: "iPhone 15 Pro Max")
    /// iPad 2
    public static let iPad2_1 = Device(id: "iPad2,1", model: "iPad 2")
    /// iPad 2
    public static let iPad2_2 = Device(id: "iPad2,2", model: "iPad 2")
    /// iPad 2
    public static let iPad2_3 = Device(id: "iPad2,3", model: "iPad 2")
    /// iPad 2
    public static let iPad2_4 = Device(id: "iPad2,4", model: "iPad 2")
    /// iPad mini
    public static let iPad2_5 = Device(id: "iPad2,5", model: "iPad mini")
    /// iPad mini
    public static let iPad2_6 = Device(id: "iPad2,6", model: "iPad mini")
    /// iPad mini
    public static let iPad2_7 = Device(id: "iPad2,7", model: "iPad mini")
    /// iPad (3rd generation)
    public static let iPad3_1 = Device(id: "iPad3,1", model: "iPad (3rd generation)")
    /// iPad (3rd generation)
    public static let iPad3_2 = Device(id: "iPad3,2", model: "iPad (3rd generation)")
    /// iPad (3rd generation)
    public static let iPad3_3 = Device(id: "iPad3,3", model: "iPad (3rd generation)")
    /// iPad (4th generation)
    public static let iPad3_4 = Device(id: "iPad3,4", model: "iPad (4th generation)")
    /// iPad (4th generation)
    public static let iPad3_5 = Device(id: "iPad3,5", model: "iPad (4th generation)")
    /// iPad (4th generation)
    public static let iPad3_6 = Device(id: "iPad3,6", model: "iPad (4th generation)")
    /// iPad Air
    public static let iPad4_1 = Device(id: "iPad4,1", model: "iPad Air")
    /// iPad Air
    public static let iPad4_2 = Device(id: "iPad4,2", model: "iPad Air")
    /// iPad Air
    public static let iPad4_3 = Device(id: "iPad4,3", model: "iPad Air")
    /// iPad mini 2
    public static let iPad4_4 = Device(id: "iPad4,4", model: "iPad mini 2")
    /// iPad mini 2
    public static let iPad4_5 = Device(id: "iPad4,5", model: "iPad mini 2")
    /// iPad mini 2
    public static let iPad4_6 = Device(id: "iPad4,6", model: "iPad mini 2")
    /// iPad mini 3
    public static let iPad4_7 = Device(id: "iPad4,7", model: "iPad mini 3")
    /// iPad mini 3
    public static let iPad4_8 = Device(id: "iPad4,8", model: "iPad mini 3")
    /// iPad mini 3
    public static let iPad4_9 = Device(id: "iPad4,9", model: "iPad mini 3")
    /// iPad mini 4
    public static let iPad5_1 = Device(id: "iPad5,1", model: "iPad mini 4")
    /// iPad mini 4
    public static let iPad5_2 = Device(id: "iPad5,2", model: "iPad mini 4")
    /// iPad Air 2
    public static let iPad5_3 = Device(id: "iPad5,3", model: "iPad Air 2")
    /// iPad Air 2
    public static let iPad5_4 = Device(id: "iPad5,4", model: "iPad Air 2")
    /// iPad (5th generation)
    public static let iPad6_11 = Device(id: "iPad6,11", model: "iPad (5th generation)")
    /// iPad (5th generation)
    public static let iPad6_12 = Device(id: "iPad6,12", model: "iPad (5th generation)")
    /// iPad Pro (9.7-inch)
    public static let iPad6_3 = Device(id: "iPad6,3", model: "iPad Pro (9.7-inch)")
    /// iPad Pro (9.7-inch)
    public static let iPad6_4 = Device(id: "iPad6,4", model: "iPad Pro (9.7-inch)")
    /// iPad Pro (12.9-inch)
    public static let iPad6_7 = Device(id: "iPad6,7", model: "iPad Pro (12.9-inch)")
    /// iPad Pro (12.9-inch)
    public static let iPad6_8 = Device(id: "iPad6,8", model: "iPad Pro (12.9-inch)")
    /// iPhone 8
    public static let iPhone10_1 = Device(id: "iPhone10,1", model: "iPhone 8")
    /// iPhone 8 Plus
    public static let iPhone10_2 = Device(id: "iPhone10,2", model: "iPhone 8 Plus")
    /// iPhone X
    public static let iPhone10_3 = Device(id: "iPhone10,3", model: "iPhone X")
    /// iPhone 8
    public static let iPhone10_4 = Device(id: "iPhone10,4", model: "iPhone 8")
    /// iPhone 8 Plus
    public static let iPhone10_5 = Device(id: "iPhone10,5", model: "iPhone 8 Plus")
    /// iPhone X
    public static let iPhone10_6 = Device(id: "iPhone10,6", model: "iPhone X")
    /// iPhone 4S
    public static let iPhone4_1 = Device(id: "iPhone4,1", model: "iPhone 4S")
    /// iPhone 5
    public static let iPhone5_1 = Device(id: "iPhone5,1", model: "iPhone 5")
    /// iPhone 5
    public static let iPhone5_2 = Device(id: "iPhone5,2", model: "iPhone 5")
    /// iPhone 5c
    public static let iPhone5_3 = Device(id: "iPhone5,3", model: "iPhone 5c")
    /// iPhone 5c
    public static let iPhone5_4 = Device(id: "iPhone5,4", model: "iPhone 5c")
    /// iPhone 5s
    public static let iPhone6_1 = Device(id: "iPhone6,1", model: "iPhone 5s")
    /// iPhone 5s
    public static let iPhone6_2 = Device(id: "iPhone6,2", model: "iPhone 5s")
    /// iPhone 6 Plus
    public static let iPhone7_1 = Device(id: "iPhone7,1", model: "iPhone 6 Plus")
    /// iPhone 6
    public static let iPhone7_2 = Device(id: "iPhone7,2", model: "iPhone 6")
    /// iPhone 6s
    public static let iPhone8_1 = Device(id: "iPhone8,1", model: "iPhone 6s")
    /// iPhone 6s Plus
    public static let iPhone8_2 = Device(id: "iPhone8,2", model: "iPhone 6s Plus")
    /// iPhone SE (1st generation)
    public static let iPhone8_4 = Device(id: "iPhone8,4", model: "iPhone SE (1st generation)")
    /// iPhone 7
    public static let iPhone9_1 = Device(id: "iPhone9,1", model: "iPhone 7")
    /// iPhone 7 Plus
    public static let iPhone9_2 = Device(id: "iPhone9,2", model: "iPhone 7 Plus")
    /// iPhone 7
    public static let iPhone9_3 = Device(id: "iPhone9,3", model: "iPhone 7")
    /// iPhone 7 Plus
    public static let iPhone9_4 = Device(id: "iPhone9,4", model: "iPhone 7 Plus")
    /// iPod touch
    public static let iPod5_1 = Device(id: "iPod5,1", model: "iPod touch")
    /// iPod touch (6th generation)
    public static let iPod7_1 = Device(id: "iPod7,1", model: "iPod touch (6th generation)")
    /// iPod touch (7th generation)
    public static let iPod9_1 = Device(id: "iPod9,1", model: "iPod touch (7th generation)")

    public static let allCases: [Device] = [
        // # iPhoneOS
        .macFamily20_1,
        .realityFamily22_1,
        .iPad11_1,
        .iPad11_2,
        .iPad11_3,
        .iPad11_4,
        .iPad11_6,
        .iPad11_7,
        .iPad12_1,
        .iPad12_2,
        .iPad13_1,
        .iPad13_10,
        .iPad13_11,
        .iPad13_16,
        .iPad13_17,
        .iPad13_18,
        .iPad13_19,
        .iPad13_2,
        .iPad13_4,
        .iPad13_5,
        .iPad13_6,
        .iPad13_7,
        .iPad13_8,
        .iPad13_9,
        .iPad14_1,
        .iPad14_2,
        .iPad14_3_A,
        .iPad14_3_B,
        .iPad14_4_A,
        .iPad14_4_B,
        .iPad14_5_A,
        .iPad14_5_B,
        .iPad14_6_A,
        .iPad14_6_B,
        .iPad7_1,
        .iPad7_11,
        .iPad7_12,
        .iPad7_2,
        .iPad7_3,
        .iPad7_4,
        .iPad7_5,
        .iPad7_6,
        .iPad8_1,
        .iPad8_10,
        .iPad8_11,
        .iPad8_12,
        .iPad8_2,
        .iPad8_3,
        .iPad8_4,
        .iPad8_5,
        .iPad8_6,
        .iPad8_7,
        .iPad8_8,
        .iPad8_9,
        .iPhone11_2,
        .iPhone11_4,
        .iPhone11_6,
        .iPhone11_8,
        .iPhone12_1,
        .iPhone12_3,
        .iPhone12_5,
        .iPhone12_8,
        .iPhone13_1,
        .iPhone13_2,
        .iPhone13_3,
        .iPhone13_4,
        .iPhone14_2,
        .iPhone14_3,
        .iPhone14_4,
        .iPhone14_5,
        .iPhone14_6,
        .iPhone14_7,
        .iPhone14_8,
        .iPhone15_2,
        .iPhone15_3,
        .iPhone15_4,
        .iPhone15_5,
        .iPhone16_1,
        .iPhone16_2,
        .iPad2_1,
        .iPad2_2,
        .iPad2_3,
        .iPad2_4,
        .iPad2_5,
        .iPad2_6,
        .iPad2_7,
        .iPad3_1,
        .iPad3_2,
        .iPad3_3,
        .iPad3_4,
        .iPad3_5,
        .iPad3_6,
        .iPad4_1,
        .iPad4_2,
        .iPad4_3,
        .iPad4_4,
        .iPad4_5,
        .iPad4_6,
        .iPad4_7,
        .iPad4_8,
        .iPad4_9,
        .iPad5_1,
        .iPad5_2,
        .iPad5_3,
        .iPad5_4,
        .iPad6_11,
        .iPad6_12,
        .iPad6_3,
        .iPad6_4,
        .iPad6_7,
        .iPad6_8,
        .iPhone10_1,
        .iPhone10_2,
        .iPhone10_3,
        .iPhone10_4,
        .iPhone10_5,
        .iPhone10_6,
        .iPhone4_1,
        .iPhone5_1,
        .iPhone5_2,
        .iPhone5_3,
        .iPhone5_4,
        .iPhone6_1,
        .iPhone6_2,
        .iPhone7_1,
        .iPhone7_2,
        .iPhone8_1,
        .iPhone8_2,
        .iPhone8_4,
        .iPhone9_1,
        .iPhone9_2,
        .iPhone9_3,
        .iPhone9_4,
        .iPod5_1,
        .iPod7_1,
        .iPod9_1
    ]
}