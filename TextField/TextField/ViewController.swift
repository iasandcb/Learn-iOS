//
//  ViewController.swift
//  TextFieldTest
//
//  Created by bmac_edu2 on 2014. 7. 17..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
                            
    @IBAction func textFieldEditingChanged(sender: UITextField) {
        self.label.text = sender.text
    }
    
    @IBAction func textFieldEditingDidBegin(sender: UITextField) {
        self.label.textColor = UIColor.blueColor()
    }
    
    @IBAction func textFieldEditingDidEnd(sender: UITextField) {
        self.label.textColor = UIColor.redColor()
    }
    
    @IBAction func textFieldDidEndOnExit(sender: UITextField) {
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

