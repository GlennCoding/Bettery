//
//  Device+CoreDataProperties.swift
//  Bettery
//
//  Created by Glenn Gregor on 06.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//
//

import Foundation
import CoreData


extension Device {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Device> {
        return NSFetchRequest<Device>(entityName: "Device")
    }

    @NSManaged public var deviceName: String?
    @NSManaged public var chargerName: String?
    @NSManaged public var batteryPerMinute: Float

}
