//
//  SettingsViewController.swift
//  tippy
//
//  Created by Park, Lily on 10/25/16.
//  Copyright © 2016 Park, Lily. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipValuesSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var defaultBackgroundColorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func setDefaults(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipValuesSegmentedControl.selectedSegmentIndex, forKey: "tipValue")
        defaults.set(defaultBackgroundColorSegmentedControl.selectedSegmentIndex, forKey: "bgColor")
        defaults.synchronize()
    }

}
