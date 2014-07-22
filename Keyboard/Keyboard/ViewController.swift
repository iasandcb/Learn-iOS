//
//  ViewController.swift
//  KeyboardTest
//
//  Created by bmac_edu2 on 2014. 7. 17..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBAction func exit(sender: AnyObject) {
    }
    
    func findFirstResponder() -> UIResponder? {
        println("R")
        for view : AnyObject in self.view.subviews {
            if view.isFirstResponder() {
                return view as? UIResponder
            }
        }
        return nil
    }
    
    func handleBackgroundViewTouch(gesture: UITapGestureRecognizer) {
        println("tap")
        var firstResponder = self.findFirstResponder()
        println(firstResponder)
        if firstResponder? {
            firstResponder!.resignFirstResponder()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var gestureRecognizer = UITapGestureRecognizer(target: self, action: "handleBackgroundViewTouch:")
        self.view.addGestureRecognizer(gestureRecognizer)
        println("load")
    }
    
    override func viewDidAppear(animated: Bool) {
        var center = NSNotificationCenter.defaultCenter()
        center.addObserver(self, selector:"handleKeyboardShowNoti:", name:UIKeyboardWillShowNotification, object:nil)
        center.addObserver(self, selector:"handleKeyboardHideNoti:", name:UIKeyboardWillHideNotification, object:nil)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        var center = NSNotificationCenter.defaultCenter()
        center.removeObserver(self)
    }
    
    func handleKeyboardShowNoti(noti: NSNotification) {
        println("show")
        var userInfo = noti.userInfo
        var tempRect = userInfo[UIKeyboardFrameBeginUserInfoKey]!.CGRectValue()
        var keyboardSize = tempRect.size
        var keyboardRect = self.view.frame
        keyboardRect.size.height = self.view.frame.size.height - keyboardSize.height
        var textField = findFirstResponder() as UIView
        if !CGRectContainsPoint(keyboardRect, textField.frame.origin) {
            let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey]!.doubleValue
            var scrollAmount = textField.frame.origin.y - keyboardSize.height
            UIView.animateWithDuration(duration) {
                self.view.center = CGPoint(x: self.view.center.x, y: self.view.center.y - scrollAmount)
            }
        } else {
            println("텍스트 필드가 키보드에 가려지지 않는 경우")
        }
        
    }

    func handleKeyboardHideNoti(noti: NSNotification) {
        println("hide")
        var rect = self.view.frame
        var userInfo = noti.userInfo
        if !CGPointEqualToPoint(rect.origin, CGPointZero) {
            var duration = userInfo[UIKeyboardAnimationDurationUserInfoKey]!.doubleValue
            rect.origin = CGPoint(x: 0, y: 0)
            UIView.animateWithDuration(duration) {
                self.view.frame = rect
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

