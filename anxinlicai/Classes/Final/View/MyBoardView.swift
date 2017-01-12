//
//  MyBoardView.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/26.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class MyBoardView: UIView {

    
    public var lineWidth:CGFloat = 1
    fileprivate var allLineArray = [[CGPoint]]()   //所有的线    记录每一条线
    fileprivate var currentPointArray = [CGPoint]() //当前画线的点  画完置空 增加到 线数组中
    fileprivate var allPointWidth = [CGFloat]()    //所有的线宽
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        setupSubviews()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let point:CGPoint = (event?.allTouches?.first?.location(in: self))!
        //路径起点
        currentPointArray.append(point)
        self.setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let point:CGPoint = (event?.allTouches?.first?.location(in: self))!
        //路径
        currentPointArray.append(point)
        //刷新视图
        self.setNeedsDisplay()
    }
    
    func cleanAll(){
        allLineArray.removeAll()
        currentPointArray.removeAll()
        allPointWidth.removeAll()
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineCap(.round)
        context?.setLineJoin(.round)
        
        //绘制之前的线
        if allLineArray.count > 0 {
            //遍历之前的线
            for i in 0..<allLineArray.count {
                let tmpArr = allLineArray[i]
                if tmpArr.count > 0 {
                    //画线
                    context?.beginPath()
                    //取出起始点
                    let sPoint:CGPoint = tmpArr[0]
                    context?.move(to: sPoint)
                    //取出所有当前线的点
                    for j in 0..<tmpArr.count {
                        let endPoint:CGPoint = tmpArr[j]
                        context?.addLine(to: endPoint)
                    }
                    context?.setLineWidth(allPointWidth[i])
                    context?.strokePath()
                }
            }
        }
        
        if currentPointArray.count > 0 {
            //绘制当前线
            context?.beginPath()
            context?.setLineWidth(self.lineWidth)
            context?.move(to: currentPointArray[0])
            print(currentPointArray[0])
            
            for i in 0..<currentPointArray.count {
                context?.addLine(to: currentPointArray[i])
                print(currentPointArray[i])
            }
            context?.strokePath()
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
