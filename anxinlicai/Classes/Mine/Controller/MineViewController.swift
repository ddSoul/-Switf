//
//  MineViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit

class MineViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var userView    : UserView?
    var tablewView  : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "个人中心"
        
//        createHeaderView()
        createViews()
        // Do any additional setup after loading the view.
    }
    
    
    func createHeaderView(){
        self.userView = UserView()
//        self.view .addSubview(self.userView!)
        
        self.userView?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(64)
            make.height.equalTo(200)
        })
    }

    
    func createViews()
    {
        self.tablewView = UITableView()
        self.tablewView?.delegate = self
        self.tablewView?.dataSource = self
        self.tablewView?.showsVerticalScrollIndicator = false
        self.tablewView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tablewView!)
        
        
        self.tablewView?.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.bottom.equalTo(-49)
            make.right.left.equalTo(0)
            
        })
        
    }

    
    // MARK: - Table view delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tablewView?.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text = "hello"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("___click")
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return self.userView
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
