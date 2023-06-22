# Device

A representation of the running device - it could be either actual or simulated.

The [`all-apple-devices`](https://github.com/EmilioOjeda/AllAppleDevices) command-line interface generates the code in the `Device.swift` files found in targets.

## Xcode - Version Used

**14.3.1 (14E300c)**

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

## Usage

```swift
import Device
// or => 'import iPhoneOSDevice' <= iPhoneOS-only device data
// or => 'import tvOSDevice' <= tvOS-only device data

// A representation of the running device - it could be either actual or simulated.
let device = Device.current

// It is 'true' when running on a physical device.
_ = device.isDevice

// It is 'true' when running on a simulator instance.
_ = device.isSimulator

// It is 'true' when the device does not match either simulators or physical devices.
_ = device.isUnknown

// The identifier for the device.
// i.e.: 'iPhone15,3'
let id = device.id

// The known/commercial name of the device.
// i.e.: 'iPhone 14 Pro Max'
let model = device.model
```
