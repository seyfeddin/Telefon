//
//  SIM.swift
//  Pods
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//
//

import Foundation
import CoreTelephony

final public class SIM {

    let networkInfo = CTTelephonyNetworkInfo()
    let carrier: CTCarrier?

    public init() {
        self.carrier = networkInfo.subscriberCellularProvider
    }

    public var carrierName: String {
        return carrier?.carrierName ?? ""
    }

    public var carrierCountry: String {
        return carrier?.isoCountryCode ?? ""
    }

    public var carrierCode: String {
        return carrier?.mobileCountryCode ?? ""
    }

    public var carrierNetwork: String {
        return carrier?.mobileNetworkCode ?? ""
    }

    public var allowsVOIP: Bool {
        return carrier?.allowsVOIP ?? false
    }

}
