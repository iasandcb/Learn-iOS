//
//  ViewController.swift
//  ImageAction
//
//  Created by bmac_edu2 on 2014. 7. 16..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var imageView1: UIImageView
    @IBOutlet var imageView2: UIImageView
    @IBAction func moveImage(sender: AnyObject) {
        var point = self.imageView1.center
        self.imageView1.center = self.imageView2.center
        self.imageView2.center = point
    }
    @IBAction func hideImage(sender: AnyObject) {
        self.imageView1.hidden = !self.imageView1.hidden
        self.imageView2.hidden = !self.imageView2.hidden
        var title = self.imageView1.hidden ? "Show" : "Hide"
        var hideButton : UIButton = sender as UIButton
        hideButton.setTitle(title, forState:UIControlState.Normal)
    }
    @IBAction func highlightImage(sender: AnyObject) {
        self.imageView1.highlighted = !self.imageView1.highlighted
        self.imageView2.highlighted = !self.imageView2.highlighted
        var stateButton = sender as UIButton
        stateButton.selected = !stateButton.selected
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

