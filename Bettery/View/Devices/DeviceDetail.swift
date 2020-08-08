//
//  DeviceDetail.swift
//  Bettery
//
//  Created by Glenn Gregor on 08.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class DeviceDetail: UIViewController {

    @IBOutlet weak var ChargerName: UILabel!
    @IBOutlet weak var BatteryPerMinute: UILabel!
    
    var device: Device?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        title = device?.deviceName
        
    }

    func setUI() {
        ChargerName.text = device!.chargerName
        BatteryPerMinute.text = "\(device!.batteryPerMinute)"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DestinationVC = segue.destination as? ChargeSettings {
            DestinationVC.deviceName = device!.deviceName
            DestinationVC.chargerName = device!.chargerName
            DestinationVC.batteryPerMinute = device!.batteryPerMinute
        }
    }


}
