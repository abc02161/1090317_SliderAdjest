//
//  ViewController.swift
//  Slider
//
//  Created by Nick on 2020/3/17.
//  Copyright © 2020 NewIdea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var energy: UIImageView!
    @IBOutlet var value: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        let energyValue = Int(sender.value)
        value.text = "\(energyValue)%"
        energy.frame = CGRect(x: 75, y: 190, width: 2*energyValue, height: 106)
        
        // 電量小於20%以下顯示紅色，其餘綠色
        if energyValue < 21 {
            energy.backgroundColor = .red
        } else {
            energy.backgroundColor = .green
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

