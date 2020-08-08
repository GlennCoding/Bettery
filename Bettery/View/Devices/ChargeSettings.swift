//
//  ChargeSettings.swift
//  Bettery
//
//  Created by Glenn Gregor on 09.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class ChargeSettings: UIViewController {

    @IBOutlet weak var CurrentBattery: UITextField!
    @IBOutlet weak var SliderLabel: UILabel!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var StartButton: UIButton!
    
    var deviceName: String = ""
    var chargerName: String = ""
    var batteryPerMinute: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func CurrentBatteryEnd(_ sender: Any) {
        Slider.minimumValue = Float(CurrentBattery.text!)!
        if Float(CurrentBattery.text!)! > 80 {
            Slider.value = Float(CurrentBattery.text!)!
        } else {
            Slider.value = 80
        }
    }
    
    @IBAction func SliderChanged(_ sender: Any) {
        let sliderValue = Int(Slider.value)
        SliderLabel.text = ("\(sliderValue)%")
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DestinationVC = segue.destination as? ActiveCharging {
            DestinationVC.deviceName = deviceName
            DestinationVC.chargerName = chargerName
            DestinationVC.batteryPerMinute = batteryPerMinute
            DestinationVC.currentBattery = Float(CurrentBattery.text!)!
            DestinationVC.targetBattery = Slider.value
        }
    }

}

extension ChargeSettings: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if StartButton.isHidden {
            StartButton.isHidden = false
        }
    }
}

