//
//  ViewController.swift
//  FeatureToggle
//
//  Created by Zhihui Sun on 8/4/19.
//  Copyright © 2019 Sylvia Shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FeatureToogle.shared.enabledUpdateLabel {
           updateLable()
        }
    }
    
    private func updateLable() {
        label.text = "updated text"
    }
}

