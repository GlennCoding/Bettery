//
//  ActiveCharging.swift
//  Bettery
//
//  Created by Glenn Gregor on 09.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class ActiveCharging: UIViewController {
    
    
    @IBOutlet weak var TopLabel: UILabel!
    @IBOutlet weak var CountDownLabel: UILabel!
    @IBOutlet weak var DismissButton: UIButton!
    
    var deviceName: String = ""
    var chargerName: String = ""
    var batteryPerMinute: Float = 0
    var currentBattery: Float = 0
    var targetBattery: Float = 0
    
    var countdownTime: Int = 0
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetVC()

        //print("\(deviceName) + \(chargerName) + \(batteryPerMinute) + \(currentBattery) + \(targetBattery)")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ActiveTimer.timerOptions), userInfo: nil, repeats: true)
    }
    
    func resetVC() {
        TopLabel.text = "This timer is based on how long your device needs to charge, to achieve the target battery percentage. You will get notified, when the timer is over."
        let seconds = ((Float(Int(targetBattery)) - currentBattery) / batteryPerMinute) * 60
        countdownTime = Int(seconds)
        displayCountdown()
        
    }
    
    func displayCountdown() {
        let countdownMinutes = countdownTime / 60
        let countdownSeconds = countdownTime % 60
        CountDownLabel.text = "\(countdownMinutes):\(countdownSeconds)"
        if countdownSeconds < 10 && countdownMinutes < 10 {
            CountDownLabel.text = "0\(countdownMinutes):0\(countdownSeconds)"
        }
        else if countdownSeconds < 10{
            CountDownLabel.text = "\(countdownMinutes):0\(countdownSeconds)"
        }
        else if countdownMinutes < 10{
            CountDownLabel.text = "0\(countdownMinutes):\(countdownSeconds)"
        }
        else {
            CountDownLabel.text = "\(countdownMinutes):\(countdownSeconds)"
        }
    }
    
    @objc func timerOptions() {
        countdownTime -= 1
        displayCountdown()
        
        if countdownTime <= 0 {
            timer.invalidate()
            CountDownLabel.text = "00:00"
            
            TopLabel.text = "Your \(deviceName) should have reached the target battery percentage now!"
            
            DismissButton.backgroundColor = UIColor.systemGreen
            DismissButton.setTitle("Done", for: .normal)
        }
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        dismiss(animated: true)
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
