generate:
	swift build -c release
	swift run all-apple-devices generate -o ./Sources/Device/Generated
	swift run all-apple-devices generate -o ./Sources/iPhoneOSDevice/Generated -p iphoneos
	swift run all-apple-devices generate -o ./Sources/tvOSDevice/Generated -p tvos
