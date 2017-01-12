//
//  Student.swift
//  anxinlicai
//
//  Created by ddSoul on 16/11/1.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class Student: NSObject {
    
    var name: String = ""  {
    
        
        didSet{
            
        }
        
    }
    var id: String?
    var num: Int?
    
    var namespeace :String {
        return Bundle.main.infoDictionary!["CFBundleName"] as! String 
    }
    
//    init(nameSting:String,idString:String,numuber:Int){
////        name = nameSting
//        id = idString
//        num = numuber
//    }
    

//    required override init() {} // 如果定义是struct，连init()函数都不用声明；
}
