//
//  Devices.swift
//  Bettery
//
//  Created by Glenn Gregor on 08.08.20.
//  Copyright © 2020 Glenn Gregor. All rights reserved.
//

import UIKit

class Devices: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    //var devices: [Device] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deviceArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "deviceCell")
        if let device = deviceArray {
            cell.textLabel?.text = device[indexPath.row].deviceName
        }
        return cell
    }


    // MARK: - Navigation

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let device = deviceArray![indexPath.row]
        performSegue(withIdentifier: "DeviceDetail", sender: device)
    }

}
