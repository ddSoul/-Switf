//
//  CustomTabbar.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class CustomTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //.创建首页导航控制器
        let vwIndex=HomeViewController();
        let navIndex=UINavigationController(rootViewController: vwIndex);
        navIndex.title="首页";
        navIndex.tabBarItem.image=UIImage(named: "home.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal); //默认显示图片
        navIndex.tabBarItem.selectedImage=UIImage(named: "homes.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal); //选中后的图片
        //.创建活动信息导航控制器
        let vwActivityInfo=FinanaicoalViewController();
        let navActivityInfo=UINavigationController(rootViewController: vwActivityInfo);
        navActivityInfo.title="活动信息";
        navActivityInfo.tabBarItem.image=UIImage(named: "Activity-information.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        navActivityInfo.tabBarItem.selectedImage=UIImage(named: "Activity-informations.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        //.创建车辆展示导航控制器
        let vwCarDisplay=FoundViewController();
        let navCarDisplay=UINavigationController(rootViewController: vwCarDisplay);
        navCarDisplay.title="车辆展示";
        navCarDisplay.tabBarItem.image=UIImage(named: "Vehicle-display.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        navCarDisplay.tabBarItem.selectedImage=UIImage(named: "Vehicle-displays.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        //.创建个人中心导航控制器
        let vwPersonalCenter=MineViewController();
        let navPersonalCenter=UINavigationController(rootViewController: vwPersonalCenter);
        navPersonalCenter.title="个人中心";
        navPersonalCenter.tabBarItem.image=UIImage(named: "Personal-Center.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        navPersonalCenter.tabBarItem.selectedImage=UIImage(named: "Personal-Centers.png")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        //.添加到工具栏
        let items=[navIndex,navActivityInfo,navCarDisplay,navPersonalCenter];
        self.viewControllers=items;
        self.navigationController?.navigationBar.tintColor=UIColor.white;
        //.自定义工具栏
        self.tabBar.backgroundColor=UIColor.clear;
        //底部工具栏背景颜色
        self.tabBar.barTintColor=UIColor.clear;
        //.设置底部工具栏文字颜色（默认状态和选中状态）
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.white, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState());
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.green, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState.selected)
        //self.tabBar.tintColorDidChange()=UIColor.greenColor();
        //    let viewBar=UIView(frame:CGRectMake(,,UIScreen.mainScreen().bounds.width, ));
        //    viewBar.backgroundColor=UIColor(patternImage:UIImage(named:"TabbarBg.png")!);
        //    self.tabBar.insertSubview(viewBar, atIndex:)
        //    self.tabBar.opaque=true
        //    self.tabBar.tintColor=UIColor.appMainColor();

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
