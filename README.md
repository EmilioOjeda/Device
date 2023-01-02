# Device

A representation of the running device - it could be either actual or simulated.

The [`all-apple-devices`](https://github.com/EmilioOjeda/AllAppleDevices) command-line interface generates the code in the `Device.swift` files found in targets.

## Xcode - Version Used

**14.2 (14C18)**

## Targets

+ **Device**
  - All the devices data.
  - Command:

    ```
    all-apple-devices generate -o ./Sources/Device/Generated
    ```  		

+ **iPhoneOSDevice**
  - iPhoneOS-only devices data.
  - Command: 

    ```
    all-apple-devices generate -o ./Sources/iPhoneOSDevice/Generated -p iphoneos
    ```

+ **tvOSDevice**
  - tvOS-only devices data.
  - Command:

    ```
    all-apple-devices generate -o ./Sources/tvOSDevice/Generated -p tvos
    ```

## Installation

**Device** is distributed using [Swift Package Manager](https://www.swift.org/package-manager/). To install it into a project, add it as a dependency within the `Package.swift` manifest:

```swift
let package = Package(
    ...
    dependencies: [
        ...
        .package(url: "https://github.com/EmilioOjeda/Device", from: "<latest_release_tag>"),
        ...
    ],
    ...
)
```

Then, add the suitable/convenient target as a dependency - *`Device`, `iPhoneOSDevice`, or `tvOSDevice`*.
