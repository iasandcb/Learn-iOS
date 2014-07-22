//
//  ViewController.swift
//  PickerTest
//
//  Created by bmac_edu2 on 2014. 7. 17..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    var imageData = []
    
    @IBAction func selectRandomProduct(sender: AnyObject) {
        var random = Int(arc4random()) % imageData.count
        picker.selectRow(random, inComponent:0, animated:true)
    }
    
    func pickerView(pickerView: UIPickerView!,
        rowHeightForComponent component: Int) -> CGFloat {
        return 80
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!,
        numberOfRowsInComponent component: Int) -> Int {
        return imageData.count
    }
    
    func pickerView(pickerView: UIPickerView!,
        viewForRow row: Int,
        forComponent component: Int,
        reusingView view: UIView!) -> UIView! {

        var imageView = view as UIImageView!
        var image = imageData[row] as UIImage

        if imageView? {
            imageView.image = image
        } else {
            imageView = UIImageView(image: image)
            imageView.frame = CGRect(x:0, y:0, width:320, height:70)
            imageView.contentMode = UIViewContentMode.ScaleAspectFit
        }
            
        return imageView
    }
    
    func pickerView(pickerView: UIPickerView!,
        didSelectRow row: Int,
        inComponent component: Int) {
            println("사용자 선택 Row : " + String(row))
            
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageData = [
            UIImage(named: "ipad"),
            UIImage(named: "ipad_mini"),
            UIImage(named: "iphone"),
            UIImage(named: "ipod_classic"),
            UIImage(named: "ipod_nano"),
            UIImage(named: "ipod_shuffle"),
            UIImage(named: "ipod_touch"),
        ]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

