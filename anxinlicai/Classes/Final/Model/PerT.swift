//
//  PerT.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/14.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import Foundation


protocol study {
    func studying()
}

extension study
{
    func studying(){
        print("我们一起studing")
    }
}

struct Men :study{

}

struct Person:ExpressibleByArrayLiteral {
    var  name: String = ""
    var  id :String = ""
    
    typealias Element = String
    init(arrayLiteral elements: Person.Element...) {
        if elements.count == 2 {
            name = elements[0]
            id = elements[1]
        }
    }
    
}

extension Person: Equatable{}

func == (p1:Person, p2:Person) -> Bool
{
    return p1.id == p2.id
}
