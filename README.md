# Telefon

[![CI Status](http://img.shields.io/travis/seyfoyun/Telefon.svg?style=flat)](https://travis-ci.org/seyfoyun/Telefon)
[![Version](https://img.shields.io/cocoapods/v/Telefon.svg?style=flat)](http://cocoapods.org/pods/Telefon)
[![License](https://img.shields.io/cocoapods/l/Telefon.svg?style=flat)](http://cocoapods.org/pods/Telefon)
[![Platform](https://img.shields.io/cocoapods/p/Telefon.svg?style=flat)](http://cocoapods.org/pods/Telefon)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Telefon is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Telefon"
```

## Usage
To get SIM info:
```swift
let sim = SIM()
```
then you can get Carrier Name, Country, Code and Network information through computed properties

To get Wifi info:
```swift
Wifi.connectedSSID // Gives SSID info
Wifi.connectedBSSID // Gives BSSID Info
```

This pod also includes [SwiftReachability](https://github.com/ashleymills/Reachability.swift) library to determine the connection quality


## Author

seyfoyun, seyfeddin@wearethread.co

## License

Telefon is available under the MIT license. See the LICENSE file for more info.
