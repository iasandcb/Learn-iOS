//
//  ViewController.swift
//  ColorSIider
//
//  Created by bmac_edu2 on 2014. 7. 16..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBAction func powerOnOff(sender: UISwitch) {
        redSlider.enabled = sender.on
        greenSlider.enabled = sender.on
        blueSlider.enabled = sender.on
        if sender.on {
            colorChanged(nil)
        } else {
            colorView.backgroundColor = UIColor.grayColor()
        }
    }
    
    @IBAction func colorChanged(sender: UISlider?) {
        var r = redSlider.value
        var g = greenSlider.value
        var b = blueSlider.value
        colorView.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

