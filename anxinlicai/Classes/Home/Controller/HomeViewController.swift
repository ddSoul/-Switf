//
//  HomeViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource ,CirCleViewDelegate{

    var tablewView : UITableView?
    var circleView: CirCleView!
    var keyboardm  = KeyBoardTool()
    var gcd = GCDTool()
    var http = HttpTool()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        createViews()
//        self.reloadData()
        
        self.keyboardm.addObserverKeyBoard()
        self.gcd.preTaskSync {
            Void in
            print("sssssss")
        }
        let dic :NSDictionary = ["ke":1]
        self.http.getRequest(parterm: dic,
                             success: {
                                        (response :NSDictionary) in
                                            print("dic\(response)")
                                        },
                             faild: {
                                        (error :NSError) in
                                        })
        
        
        let stringT = deferTask()
        print("_____:\(stringT)")
        
        // Do any additional setup after loading the view.
    }
    
    func createViews(){
        
        self.automaticallyAdjustsScrollViewInsets = false
        let imageArray: [UIImage?] = [UIImage(named: "first.jpg"), UIImage(named: "second.jpg"), UIImage(named: "third.jpg")]
        
        self.circleView = CirCleView(frame: CGRect(x: 0, y: 64, width: self.view.width, height: 200), imageArray: imageArray)
        circleView.backgroundColor = UIColor.orange
        circleView.delegate = self
        self.view.addSubview(circleView)
        
        self.tablewView = UITableView()
        self.tablewView?.delegate = self
        self.tablewView?.dataSource = self
        self.tablewView?.showsVerticalScrollIndicator = false
        self.tablewView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tablewView!)
        
        self.tablewView?.snp.makeConstraints({ (make) in
            make.top.equalTo(264)
            make.bottom.equalTo(-49)
            make.right.left.equalTo(0)
        })
    
    }
    
    func reloadData(){
    
//    http://apis.baidu.com/txapi/weixin/wxhot
        Alamofire.request("http://apis.baidu.com/showapi_open_bus/showapi_joke/joke_text", method:.get, parameters: ["page":"1","num":"10"],headers:["apikey":"eb0d7633268c4e4d346bd6cfa57a47e5"]).responseJSON{
            response in
            if let json = response.result.value {
                
                let dic = JSON(json)
                let sourdata = dic["showapi_res_body"]["contentlist"].array
                for value in sourdata!
                {
                    print("model:\(value)")
                    
                }
            }

        }
    
    }
    
    func deferTask() -> String
    {
        
        defer{
            print("延迟操作的任务")
        }
        print("正常的任务")
        return "操作"
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
    
    // MARK: - cir Delegate
    func clickCurrentImage(_ currentIndxe: Int){
        print("\(currentIndxe)")
        let bannerVc = BannerWebVC()
        self.navigationController?.pushViewController(bannerVc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
