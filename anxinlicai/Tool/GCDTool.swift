//
//  GCDTool.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/1.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class GCDTool: NSObject {

    
    func preTaskAsync(task:@escaping (() -> Void)) {
      
        DispatchQueue.global().async(execute: task)
    }
    
    func preTaskSync(task:(() -> Void)){
        
        DispatchQueue.global().sync(execute: task)
    }
}
