//
//  ActiveTimer.swift
//  Bettery
//
//  Created by Glenn Gregor on 08.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class ActiveTimer: UIViewController {
    
    var deviceName: String = ""
    var chargerName: String = ""
    var batteryStart: Float = 0
    var testTime: Int = 20
    var countdownTime: Int = 0

    @IBOutlet weak var CountDownLabel: UILabel!
    @IBOutlet weak var HeadlineLabel: UILabel!
    @IBOutlet weak var BatteryInputStack: UIStackView!
    @IBOutlet weak var BatteryEnd: UITextField!
    @IBOutlet weak var SaveButton: UIButton!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetVC()
        
        print("\(deviceName), \(chargerName), \(batteryStart), \(testTime)")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ActiveTimer.timerOptions), userInfo: nil, repeats: true)
    }
    
    func resetVC() {
        HeadlineLabel.text = "Now what you need to do is just relax and leave your device charged. When you will get our message, that the timer is over, please unplug your device and follow the next instructions."
        BatteryInputStack.isHidden = true
        countdownTime = testTime * 60
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
            CountDownLabel.text = ""
            HeadlineLabel.text = "The test is almost complete! Please now enter the current battery percentage of your device down below and then click on save."
            BatteryInputStack.isHidden = false
        }
    }
    
    @IBAction func Save(_ sender: Any) {
        CountDownLabel.text = ""
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

extension ActiveTimer: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if SaveButton.isHidden {
            
            SaveButton.isHidden = false
        }
    }
}
