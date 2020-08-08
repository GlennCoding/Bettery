//
//  Device.swift
//  Bettery
//
//  Created by Glenn Gregor on 08.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import Foundation

class Device {

    var deviceName: String
    var chargerName: String
    var batteryPerMinute: Float

    init(deviceName: String, chargerName: String, batteryPerMinute: Float) {
        self.deviceName = deviceName
        self.chargerName = chargerName
        self.batteryPerMinute = batteryPerMinute
    }

//    class func createDeviceArray() -> [Device] {
//
//        var tempDevices: [Device] = []
//
//            let device1 = Device(deviceName: "iPhone", chargerName: "", batteryStart: 20, batteryEnd: 30, testTime: 10)
//            let device2 = Device(deviceName: "iPad", chargerName: "", batteryStart: 10, batteryEnd: 30, testTime: 15)
//            let device3 = Device(deviceName: "Airpods", chargerName: "", batteryStart: 20, batteryEnd: 50, testTime: 5)
//
//            tempDevices.append(device1)
//            tempDevices.append(device2)
//            tempDevices.append(device3)
//
//            return tempDevices
//
//    }

}
