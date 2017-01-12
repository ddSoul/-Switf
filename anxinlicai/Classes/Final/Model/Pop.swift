//
//  Pop.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/14.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

protocol WordType {
    var name:String {get}
    var destion:String {get}
}

struct KingSolf:WordType{
    internal var destion: String
    internal var name: String
    //
}

struct Yooudao:WordType {
    internal var destion: String
    internal var name: String
}

class Pop: NSObject {

}
