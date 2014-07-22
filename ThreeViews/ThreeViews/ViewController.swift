//
//  ViewController.swift
//  ThreeViews
//
//  Created by bmac_edu2 on 2014. 7. 15..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var redView: UIView
    @IBOutlet var greenLight: UIView
    var blueView: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("load")
        var redView = self.view.viewWithTag(100)
        println(redView)
        println(greenLight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

