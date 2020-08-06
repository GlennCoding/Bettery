//
//  StartTimer.swift
//  Bettery
//
//  Created by Glenn Gregor on 05.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class StartTimer: UIViewController {

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
