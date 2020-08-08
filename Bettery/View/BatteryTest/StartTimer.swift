//
//  StartTimer.swift
//  Bettery
//
//  Created by Glenn Gregor on 05.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class StartTimer: UIViewController {
    
    var deviceName: String = ""
    var chargerName: String = ""
    var batteryStart: Float = 0

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let sliderValue = Int(timeSlider.value)
        timerLabel.text = ("\(sliderValue):00")
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DestinationVC = segue.destination as? ActiveTimer {
            DestinationVC.deviceName = deviceName
            DestinationVC.chargerName = chargerName
            DestinationVC.batteryStart = batteryStart
            DestinationVC.testTime = Int(timeSlider.value)
        }
    }

}
