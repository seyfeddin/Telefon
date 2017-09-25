//
//  ViewController.swift
//  Telefon
//
//  Created by seyfoyun on 08/23/2017.
//  Copyright (c) 2017 seyfoyun. All rights reserved.
//

import UIKit
import Telefon

final class SIMViewController: UIViewController {

    @IBOutlet fileprivate weak var allowsVOIPResultLabel: UILabel!
    @IBOutlet fileprivate weak var carrierNameResultLabel: UILabel!
    @IBOutlet fileprivate weak var carrierCountryResultLabel: UILabel!
    @IBOutlet fileprivate weak var carrierCodeResultLabel: UILabel!
    @IBOutlet fileprivate weak var carrierNetworkResultLabel: UILabel!


    fileprivate let sim = SIM()

    override func viewDidLoad() {
        super.viewDidLoad()

        allowsVOIPResultLabel.text = sim.allowsVOIP.description
        carrierNameResultLabel.text = sim.carrierName
        carrierCountryResultLabel.text = sim.carrierCountry
        carrierCodeResultLabel.text = sim.carrierCode
        carrierNetworkResultLabel.text = sim.carrierNetwork


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

