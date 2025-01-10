Demo project that reproduces an error with cocoapods after enabling Swift 6.

#### Overview

The demo project includes the following targets:
1.	`Cocoapods-demo`: The main application target.
2.	`CoreFeatureFramework`: A framework that depends on `LoggerFramework`.
3.	`LoggerFramework`: A dynamic framework that depends on the external library `CocoaLumberjack`.


#### Issue

After setting the Swift Language Version of a module to Swift 6 in Xcode, it triggers an error *"Missing required module 'XXX'"*, which doesn't occur with Swift 5.

Steps to reproduce:
1. Open the folder in the command line and run `pod install`.
2. Open *"Cocoapods-demo.xcworkspace"* in Xcode.
3. Choose `CoreFeatureFramework` as the target and build. It succeeds with no errors.
4. Next, go to build settings for `CoreFeatureFramework`, change the Swift Language Version from Swift 5 to Swift 6, and build again.
5. The error *"Missing required module 'CocoaLumberjack'"* appears at `Feature.swift` (Line 8).

**Results**:
In the demo project, the error *"Missing required module 'CocoaLumberjack'"* occurs when using Swift 6 but not with Swift 5.