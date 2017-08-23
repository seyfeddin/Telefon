//
//  TelefonConnectionType.swift
//  Pods
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//
//

import Foundation
import ReachabilitySwift
import CoreTelephony

final public class TelefonConnectionType {

    private let reachability = Reachability()!

    public var w3cConnectionTypeString: String {
        let networkStatus = reachability.currentReachabilityStatus

        switch networkStatus {
        case .notReachable:
            return "none"
        case .reachableViaWWAN:
            let telephonyInfo = CTTelephonyNetworkInfo()
            if telephonyInfo.currentRadioAccessTechnology != nil {
                switch telephonyInfo.currentRadioAccessTechnology! {
                case CTRadioAccessTechnologyGPRS, CTRadioAccessTechnologyEdge:
                    return "2g"
                case CTRadioAccessTechnologyWCDMA,
                     CTRadioAccessTechnologyHSDPA,
                     CTRadioAccessTechnologyHSUPA,
                     CTRadioAccessTechnologyCDMA1x,
                     CTRadioAccessTechnologyCDMAEVDORev0,
                     CTRadioAccessTechnologyCDMAEVDORevA,
                     CTRadioAccessTechnologyCDMAEVDORevB,
                     CTRadioAccessTechnologyeHRPD:
                    return "3g"
                case CTRadioAccessTechnologyLTE:
                    return "4g"
                default:
                    return "unknown"
                }
            } else {
                return "unknown"
            }
        case .reachableViaWiFi:
            return "wifi"
        }

    }


}
