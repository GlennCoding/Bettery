//
//  BatteryTest.swift
//  Bettery
//
//  Created by Glenn Gregor on 05.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class BatteryTest: UIViewController {

    @IBOutlet weak var DeviceName: UITextField!
    @IBOutlet weak var ChargerName: UITextField!
    @IBOutlet weak var CurrentBattery: UITextField!
    
    
    @IBOutlet weak var NextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(deviceArray!)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DestinationVC = segue.destination as? StartTimer {
            DestinationVC.deviceName = DeviceName.text!
            DestinationVC.chargerName = ChargerName.text!
            DestinationVC.batteryStart = Float(CurrentBattery.text!)!
        }
    }
    
}


extension BatteryTest: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if NextButton.isHidden {
            NextButton.isHidden = false
        }
    }
}
