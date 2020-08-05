//
//  Homescreen.swift
//  Bettery
//
//  Created by Glenn Gregor on 04.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class Homescreen: UIViewController {

    @IBOutlet weak var CurrentBatteryPercentage: UILabel!
    
    
    
    var batteryLevel: Float { UIDevice.current.batteryLevel }
    var batteryState: UIDevice.BatteryState { UIDevice.current.batteryState }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(batteryLevel)
        CurrentBatteryPercentage.text = "\(Int(batteryLevel * 100))%"
        
        NotificationCenter.default.addObserver(self, selector: #selector(batteryStateDidChange), name: UIDevice.batteryStateDidChangeNotification, object: nil)

    }
    
    @objc func batteryStateDidChange(_ notification: Notification) {
        switch batteryState {
        case .unplugged, .unknown:
            print("not charging")
        case .charging, .full:
            print("charging or full")
            CurrentBatteryPercentage.textColor = UIColor.green
        @unknown default:
            fatalError()
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
