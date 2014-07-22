//
//  ViewController.swift
//  ThreeViewsByCode
//
//  Created by bmac_edu2 on 2014. 7. 15..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var switch: UISwitch
    // boilerplate
    var imageView : UIImageView?
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        println("loaded")
        // Do any additional setup after loading the view, typically from a nib.

        // 생성
        var redView = UIView(frame: CGRect(x:10, y:10, width:100, height:100))
        
        // 배경색 지정
        // 속성 설정
        redView.backgroundColor = UIColor.redColor()
        
        // redView의 부모를 지정한다
        // redView의 부모는 self.view다
        // self.view에게 redView를 자식으로 삼으라고 명한다
        // 화면 등장
        self.view.addSubview(redView)
        
        var greenView = UIView(frame:CGRect(x:90, y:40, width:100, height:100))
        greenView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(greenView)
        
        var blueView = UIView(frame:CGRect(x:40, y:100, width:100, height:100))
        blueView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        imageView = nil
    }


}

