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
    var batteryEnd: Float = 0

    @IBOutlet weak var CountDownLabel: UILabel!
    
    var count = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("\(deviceName), \(chargerName), \(batteryStart), \(batteryEnd)")
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
