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
    var name :String = "zs"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "个人中心"
        
        createHeaderView()
        createViews()
        // Do any additional setup after loading the view.
    }
    
    
    func createHeaderView(){
        self.userView = UserView()
        self.view .addSubview(self.userView!)
        self.userView?.isUserInteractionEnabled = true
        
        let tapGes = UITapGestureRecognizer()
        tapGes.addTarget(self, action: #selector(tapHeaderView))
        self.userView?.addGestureRecognizer(tapGes)
        
        self.userView?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(64)
            make.height.equalTo(200)
        })
    }

    func tapHeaderView(){
        print("你点击了头像")
        
        let animation = CABasicAnimation()
        animation.duration = 3.0
        animation.keyPath = "opacity"
        animation.fromValue = 1;
        animation.toValue = 0;
        self.userView?.layer.add(animation, forKey: "headerAnimation")
    }
    
    func createViews()
    {
        self.tablewView = UITableView()
        self.tablewView?.delegate = self
        self.tablewView?.dataSource = self
        self.tablewView?.showsVerticalScrollIndicator = false
        //若是xib绘制的cell
        let cellNib = UINib(nibName: "MineCell", bundle: nil)
        self.tablewView?.register(cellNib, forCellReuseIdentifier: "cell")
        //代码的cell 
//        self.tablewView?.register(MineCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tablewView!)
        
        
        self.tablewView?.snp.makeConstraints({ (make) in
            make.top.equalTo(200)
            make.bottom.equalTo(-49)
            make.right.left.equalTo(0)
            
        })
        
    }

    
    // MARK: - Table view delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tablewView?.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MineCell
//        cell?.textLabel?.text = "hello"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
