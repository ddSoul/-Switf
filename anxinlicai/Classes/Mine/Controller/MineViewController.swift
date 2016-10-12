//
//  MineViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    var userView : UserView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "个人中心"
        
        createHeaderView()
        // Do any additional setup after loading the view.
    }
    
    
    func createHeaderView(){
        self.userView = UserView()
        self.view .addSubview(self.userView!)
        self.userView?.snp_makeConstraints{
            (make) -> Void in
            make.left.right.equalTo(0)
            make.top.equalTo(64)
            make.height.equalTo(300)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
