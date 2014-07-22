//
//  ViewController.swift
//  ModalTest
//
//  Created by bmac_edu2 on 2014. 7. 17..
//  Copyright (c) 2014년 ias. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate, UIActionSheetDelegate {
                            
    @IBAction func showAlert(sender: AnyObject) {
        var alert = UIAlertView()
        alert.title = "확인"
        alert.message = "진행하겠습니까?"
        alert.addButtonWithTitle("취소")
        alert.cancelButtonIndex = 0
        alert.addButtonWithTitle("확인")
        alert.delegate = self
        alert.tag = 1
        alert.show()
    }
    
    @IBAction func showTextInputAlert(sender: AnyObject) {
        // http://stackoverflow.com/questions/24084521/uialertview-is-not-working-in-swift
        // iOS 8에서는 UIAlertControllerStyleAlert 를 써야 하는데 iOS 7과의 호환성을 위해 그대로 UIAlertView를 쓴다.
        
        var alert = UIAlertView()
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.title = "문자 입력"
        alert.message = "문자열을 입력하세요"
        alert.addButtonWithTitle("취소")
        alert.addButtonWithTitle("확인")
        alert.delegate = self
        alert.tag = 2
        alert.show()
    }
    
    
    @IBAction func showActionSheet(sender: AnyObject) {
        var sheet = UIActionSheet()
        sheet.title = "제목"
        sheet.delegate = self
        sheet.addButtonWithTitle("취소")
        sheet.cancelButtonIndex = 0
        sheet.addButtonWithTitle("삭제")
        sheet.destructiveButtonIndex = 1
        sheet.addButtonWithTitle("확인")
        sheet.showInView(view)
    }
    
    func actionSheet(actionSheet: UIActionSheet!,
        clickedButtonAtIndex buttonIndex: Int) {
        println(buttonIndex)
        
        if actionSheet.cancelButtonIndex == buttonIndex {
            println("취소 선택")
        } else if actionSheet.destructiveButtonIndex == buttonIndex {
            println("삭제 선택")
        // 안타깝게도 스위프트에서는 firstOtherButtonIndex는 제대로 나오지 못한다.
        } else {
            println("확인 선택")
        }
    }
    
    func alertView(alertView: UIAlertView!,
        clickedButtonAtIndex buttonIndex: Int) {
        println(buttonIndex)
        if 1 == alertView.tag {
            if alertView.cancelButtonIndex == buttonIndex {
                println("취소")
            } else {
                println("확인")
            }
        } else {
            if alertView.cancelButtonIndex == buttonIndex {
                println("취소")
            } else {
                var textField = alertView.textFieldAtIndex(0)
                println("User Input: " + textField.text)
            }
        }
            
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

