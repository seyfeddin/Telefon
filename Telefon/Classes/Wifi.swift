//
//  Wifi.swift
//  Pods
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//
//

import Foundation
import SystemConfiguration.CaptiveNetwork

public enum Wifi {

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

}
