
# Smart Spectra SDK
[![swift-version](https://img.shields.io/badge/swift-5.5-orange.svg)](https://github.com/apple/swift) [![iOS_Compatibility](https://img.shields.io/badge/iOS_Compatibility-13.0+-orange.svg)](https://github.com/apple/swift) [![swift_tool_version](https://img.shields.io/badge/swift_tool_version-5.7+-orange.svg)](https://github.com/apple/swift) [![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)

This repository contains the framework for Presage Technologies SmartSpectra along with an example application for recommended implementation. Using the SmartSpectra SDK, users can monitor their RR and HR with a 30 second video.

## How Does it Work?

The core technology comes from MediaPipe with additional Graphs for preprocessing. After video collection, pre-processed data, not videos, is uploaded to the Presage SmartSpectra API for processing. Our technology extracts the user’s pulse wave by analyzing subtle color variations across the skin regions of the user’s face. The user’s pulse is then used to determine HR and RR data.

<img width="200" alt="Screenshot 2023-08-25 at 4 28 16 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/6e55f656-e3b6-429e-abb1-0e96b2302d60">
<img width="200" alt="Screenshot 2023-08-25 at 4 28 16 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/6211c096-96bf-43cc-864b-a34c8bcafa59">
<img width="200" alt="Screenshot 2023-08-25 at 4 28 16 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/7b5613c7-58df-45d1-b3bd-d6eadac4a2a9">
<img width="200" alt="Screenshot 2023-08-25 at 4 28 16 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/b8e15e33-b626-49d9-aa58-d9d0c631c0d0">

## Setup & Run

### Swift Package Manager
Simply add bellow url as a package in your SPM section
```bash
Comming Soon
```
### Cocoapods
Simply add bellow url in your pod and do a pod install
```bash
Comming Soon
```
### Manual Integration
```bash
1- Just Drag and drop the Sources folder
```
```bash
2- Drag and Drop PresagePreprocessing.framework within your project and create a Bridging-Header for it
3- Make sure to Embed and Sign PresagePreprocessing and add thhe path to your Bridging-Header in Build Settings - Bridging Header section
add it in your Bridging Header

#import <PresagePreprocessing/PresagePreprocessing.h>


```
<img width="400" alt="Screenshot 2023-09-01 at 12 43 08 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/fd32b4d4-6a57-469d-aa37-8b1d2b48ff51">

<img width="400" alt="Screenshot 2023-09-01 at 12 43 20 PM" src="https://github.com/Presage-Security/Smart_Spectra_SDK/assets/43537367/2ed0feb4-1940-4d04-8558-4fcc485e3230">



### XCFramework
```bash
Comming Soon
```

## Setup & Run
After successfully adding SDK throw one of above steps
Use  below code to add Smart  Spectra Checkup Button and Result View to your page
```bash
    private let core: MPIrisTracker = MPIrisTracker()

    private lazy var button : SmartSpectraButton = {
        let res = SmartSpectraButton.init(apiKey: "API_KEY")
        res.translatesAutoresizingMaskIntoConstraints = false
        res.delegate = self

        return res
    }()
    private lazy var resultView : SmartSpectraResultView = {
        let res = SmartSpectraResultView()
        res.translatesAutoresizingMaskIntoConstraints = false
        return res
    }()
```
**Please not that in order to work with oour SDK you need to have an API_Key**


Make sure to comform your page to SmartSpectraDelegate

```bash
extension ViewController: SmartSpectraDelegate {
    func passProcessedView(_ view: SmartSpectraResultView) {
        self.resultView = view
    }
}
```


Now by adding the button to your page, it will handle everything for you and you can get the final result after  the  processing is done within the Smart Spectra result view





