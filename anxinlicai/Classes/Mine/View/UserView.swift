//
//  UserView.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/10/12.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class UserView: UIView {

    let viewBounds:CGRect = CGRect(x:0,y:20,
                                   width:UIScreen.main.bounds.width,
                                   height:UIScreen.main.bounds.height)
    var headImageView : UIImageView?
    var nickNameLable : UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("走上")
        setupSubviews()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("走下---")
//        setupSubviews()
    }
    
    func setupSubviews() {
        self.headImageView = UIImageView()
        self.nickNameLable = UILabel()
        self.headImageView?.backgroundColor = UIColor.red
        self.nickNameLable?.backgroundColor = UIColor.green
        self.nickNameLable?.layer.masksToBounds = true
        self.nickNameLable?.layer.cornerRadius = 50
        self .addSubview(self.headImageView!)
        self .addSubview(self.nickNameLable!)
        
        headImageView?.snp_makeConstraints{
            (make) -> Void in
            make.top.left.right.bottom.equalTo(0)
        }
        nickNameLable?.snp_makeConstraints{
            (make) -> Void in
            make.height.width.equalTo(100)
            make.top.equalTo(100)
            make.left.equalTo(self.viewBounds.width/2-50)
        }


    }
    

}
