//
//  Wifi.swift
//  Pods
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//
//

import Foundation
import SystemConfiguration.CaptiveNetwork

final public class Wifi {

    public static func fetchSSIDInfo() -> CFDictionary? {
        if let supportedInterfacesArray = CNCopySupportedInterfaces() as? [CFString] {

            for info in supportedInterfacesArray {
                if let dictionary = CNCopyCurrentNetworkInfo(info) {
                    return dictionary
                }
            }
        }

        return nil
    }

    public static var connectedSSID: String? {

        if let ssidInfo = Wifi.fetchSSIDInfo() {
            if let ssidInfoString = (ssidInfo as NSDictionary)[kCNNetworkInfoKeySSID] as? String {
                return ssidInfoString
            }
        }

        return nil
    }

    public static var connectedBSSID: String? {

        if let ssidInfo = Wifi.fetchSSIDInfo() {
            if let bssidInfoString = (ssidInfo as NSDictionary)[kCNNetworkInfoKeyBSSID] as? String {
                return bssidInfoString
            }
        }

        return nil
    }

//    public static func isWifiEnabled() -> Bool {
//        // Got this from:
//        var addresses = [String]()
//
//        var ifaddr : UnsafeMutablePointer<ifaddrs>?
//        guard getifaddrs(&ifaddr) == 0 else { return false }
//        guard let firstAddr = ifaddr else { return false }
//
//        for ptr in sequence(first: firstAddr, next: { $0.pointee.ifa_next }) {
//            addresses.append(String(cString: ptr.pointee.ifa_name))
//        }
//
//        freeifaddrs(ifaddr)
//        return addresses.contains("awdl0")
//    }

}
