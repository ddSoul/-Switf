//
//  MyTbbarViewController.swift
//  anxinlicai
//
//  Created by ddSoul on 17/1/12.
//  Copyright © 2017年 邓西亮. All rights reserved.
//

import UIKit

class MyTbbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildControllers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MyTbbarViewController{
    
    
    func setupChildControllers(){
        
        let array = [
            ["clsName":"HomeViewController","title":"首页","imageName":""],
            ["clsName":"HomeViewController","title":"hello","imageName":""],
        ]
        
        var arrayM = [UIViewController]()
        for dict in array {
            arrayM.append(controller(dict: dict))
        }
        viewControllers = arrayM
    }
    
    private func controller(dict : [String :String]) -> UIViewController{
        
        let mainBundleNameString = Bundle.main.infoDictionary!["CFBundleName"] as! String
        
        guard let clsName = dict["clsName"],
        let title = dict["title"],
        let imageName = dict["imageName"],
        let cls = NSClassFromString(mainBundleNameString + "." + clsName) as? UIViewController.Type
        
            else{
                return UIViewController()
        }
        
        let vc = cls.init()
        vc.title = title
        //设置颜色
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.red], for: .highlighted)
        //设置字体大小
        vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 13)], for: UIControlState(rawValue:0))
        vc.tabBarItem.image = UIImage(named:"")
        vc.tabBarItem.selectedImage = UIImage(named:"")?.withRenderingMode(.alwaysOriginal)
        let nav = UINavigationController(rootViewController:vc)
        return nav
    }
    
}
