//
//  Constants.swift
//  Bettery
//
//  Created by Glenn Gregor on 08.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import Foundation

// Different to tutorial: todoList -> deviceArray, [String] -> [Device]

var deviceArray: [Device]?

func saveData(deviceArray:[Device]) {
    UserDefaults.standard.set(deviceArray, forKey: "deviceArray")
}

func fetchData() -> [Device]? {
    if let device = UserDefaults.standard.array(forKey: "deviceArray") as? [Device] {
        return device
    }
    else {
        return nil
    }
}
