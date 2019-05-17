# SSKitCore

SSKit is a iOS AR Measurement tool you can use in your app to measure volume of objects. 

## Implemantation Guide

1. Download the lastest SDK from [releases](https://github.com/SmartSendApp/SSKitCore/releases)
2. Unzip the file
3. Drag the SSKitCore Framework to your xcode project
4. On your Project Settings Add SSKitCore to embedded libraries.
5. On the viewcontroller you want to do measurement import the frameworkk on top of swift file
```swift
#if !targetEnvironment(simulator)
import SSKKitCore
#endif
```
6. Confirm your viewcontroller to `SSViewControllerDelegate`
7. When you want to call the measurement screen use the following code
```swift
#if !targetEnvironment(simulator)
let measure = SSViewController.getClass()
measure.resultDelegate = self
measure.massClassification = false
self.present(measure, animated: true, completion: nil)
#else
print("you can't use AR in simulators")
#endif
```
8. After the measurement you can use the results with following delecate callback
```swift
#if !targetEnvironment(simulator)
extension ViewController: SSViewControllerDelegate {
	func arresutlt(didReceiveResut result: ARResult) {
		// Do anything with the result
	}
}
#endif
```
9. Make sure to run this on real device not simulator

# Releasing the app

Please contact us about releasing your app on the app store. Currently this SDK does not lets you use the measurement in App Store apps. You can contact us about licanceing at info@smartsendapp.com
