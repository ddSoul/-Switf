//
//  KeyBoardTool.swift
//  anxinlicai
//
//  Created by ddSoul on 16/11/30.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class KeyBoardTool: NSObject {

    
    func addObserverKeyBoard() {
        
        addObserverKeyBoardShow()
        addObserverKeyBoardHidden()
    }
    
    func removeObserverKeyBoard(){
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIKeyboardDidHide, object: nil)
    }
    
    func addObserverKeyBoardHidden() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardHidden(noti:)), name: Notification.Name.UIKeyboardDidHide, object: nil)

    }
    
    func addObserverKeyBoardShow() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardShow(noti:)), name: Notification.Name.UIKeyboardDidShow, object: nil)
    }
    
    func keyBoardHidden(noti:NSNotification) {
        print("隐藏了")
    }
    func keyBoardShow(noti:NSNotification){
        print("显示了")
    }
}
