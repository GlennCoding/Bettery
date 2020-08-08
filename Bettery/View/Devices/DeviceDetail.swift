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

}
