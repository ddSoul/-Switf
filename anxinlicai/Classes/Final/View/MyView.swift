//
//  MyView.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/14.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class MyView: UIView {

    override func draw(_ rect: CGRect) {
        self.backgroundColor = UIColor.yellow
        guard let context = UIGraphicsGetCurrentContext() else {
            print("error")
            return
        }
        
        context.setStrokeColor(UIColor.red.cgColor)
        
        let strokeWiddth :CGFloat = 3.0
        context.setLineWidth(strokeWiddth)
        
        let center = CGPoint(x:100,y:100)
        let rauild = 50
        let startAngle :CGFloat = 0.0
        let endAngle = 2 * CGFloat.pi
        
        context.addArc(center: center,
                       radius: CGFloat(rauild),
                       startAngle: startAngle,
                       endAngle: endAngle,
                       clockwise: true)
        
        context.drawPath(using: .fill)
        
        
    }

}
