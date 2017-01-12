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
    var topBackImage  : UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupSubviews() {
        self.headImageView = UIImageView()
        self.nickNameLable = UILabel()
        self.topBackImage = UIImageView()
        
        self.headImageView?.backgroundColor = UIColor.red
        self.headImageView?.image = UIImage(named : "avatar")
        self.headImageView?.layer.masksToBounds = true
        self.headImageView?.layer.cornerRadius = 50
        
        self.topBackImage?.image = UIImage(named: "top")
        self.nickNameLable?.textAlignment = NSTextAlignment(rawValue: 1)!
        self.nickNameLable?.backgroundColor = UIColor.clear
        self.nickNameLable?.textColor = UIColor.white
        self.nickNameLable?.text = "NUll"
    
        
        self.addSubview(self.topBackImage!)
        self .addSubview(self.headImageView!)
        self .addSubview(self.nickNameLable!)
     
        
        topBackImage?.snp.makeConstraints{ (make) in
            make.top.left.right.bottom.equalTo(0)
        }

        headImageView?.snp.makeConstraints{
            (make) in
            make.height.width.equalTo(100)
            make.top.equalTo(30)
            make.left.equalTo(self.viewBounds.width/2-50)
        }
        
        nickNameLable?.snp.makeConstraints({ (make) in
            make.height.equalTo(30)
            make.width.equalTo(200)
            make.top.equalTo(130)
            make.left.equalTo(self.viewBounds.width/2-100)
        })


    }
    

}
