//
//  ReachabilityInfoViewController.swift
//  Telefon
//
//  Created by Seyfeddin Bassarac on 23/08/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import ReachabilitySwift

class ReachabilityInfoViewController: UIViewController {

    @IBOutlet fileprivate weak var reachabilityResultLabel: UILabel!

    let reachability = Reachability()!

    deinit {
        reachability.stopNotifier()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        reachability.whenReachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                self.reachabilityResultLabel.text = reachability.currentReachabilityStatus.description
            }
        }
        reachability.whenUnreachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                self.reachabilityResultLabel.text = reachability.currentReachabilityStatus.description
            }
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
