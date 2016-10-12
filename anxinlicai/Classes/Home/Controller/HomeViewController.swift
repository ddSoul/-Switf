//
//  HomeViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tablewView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        createTableView()
        
        // Do any additional setup after loading the view.
    }

    func createTableView(){
        
        self.tablewView = UITableView()
        self.tablewView?.delegate = self
        self.tablewView?.dataSource = self
        self.tablewView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tablewView!)
        
        self.tablewView?.snp_makeConstraints {
            (make) -> Void in
            make.top.right.left.bottom.equalTo(0)
            
        }

    }
    
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
