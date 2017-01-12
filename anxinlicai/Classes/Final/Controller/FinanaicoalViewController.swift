//
//  FinanaicoalViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class FinanaicoalViewController: UIViewController {
    
    var myboradView :MyBoardView?
    lazy var label :UILabel = { ()->UILabel in
        let lb = UILabel()
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "我的理财"
        
        let p1 :Person = ["张三","2"]
        let p2 :Person = ["赵四","2"]
        print(p1,p2)
        print(p1 == p2)
        
        let s1 = Men()
        s1.studying()
        
        myboradView = MyBoardView()
        myboradView?.frame = CGRect(x:0,y:0,width:self.view.width,height:self.view.height)
        myboradView?.backgroundColor = UIColor.white
        self.view.addSubview(myboradView!)
        
        
        // Do any additional setup after loading the view.
    }


    
//    func renderWord(word: protocol<WordType>) {
//        print(word.destion)
//        print(word.name)
//    }
    

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
