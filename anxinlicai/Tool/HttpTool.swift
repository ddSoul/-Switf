//
//  HttpTool.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/1.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit
import Alamofire

class HttpTool: NSObject {
    
    func getRequest(parterm: NSDictionary ,success:((_ response :NSDictionary) -> Void),faild:((_ error :NSError) -> Void)) -> Void {
        let jsonT: NSDictionary = ["key1":"d","key2":"2"]
        success(jsonT)
    }

}
