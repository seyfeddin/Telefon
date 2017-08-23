//
//  WifiViewController.swift
//  Telefon
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Telefon

class WifiViewController: UIViewController {

    @IBOutlet fileprivate weak var ssidResultLabel: UILabel!
    @IBOutlet fileprivate weak var bssidResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        ssidResultLabel.text = Wifi.connectedSSID
        bssidResultLabel.text = Wifi.connectedBSSID

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
