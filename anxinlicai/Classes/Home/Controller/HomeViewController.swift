//
//  HomeViewController.swift
//  anxinlicai
//
//  Created by 邓西亮 on 16/8/8.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource ,CirCleViewDelegate{

    var tablewView : UITableView?
    var circleView: CirCleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        createViews()
        self.reloadData()

        
        // Do any additional setup after loading the view.
    }

    func createViews(){
        
        self.automaticallyAdjustsScrollViewInsets = false
        let imageArray: [UIImage?] = [UIImage(named: "first.jpg"), UIImage(named: "second.jpg"), UIImage(named: "third.jpg")]
        
        self.circleView = CirCleView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: 200), imageArray: imageArray)
        circleView.backgroundColor = UIColor.orange
        circleView.delegate = self
        self.view.addSubview(circleView)
        
        self.tablewView = UITableView()
        self.tablewView?.delegate = self
        self.tablewView?.dataSource = self
        self.tablewView?.showsVerticalScrollIndicator = false
        self.tablewView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tablewView!)
        
        self.tablewView?.snp_makeConstraints {
            (make) -> Void in
            make.top.equalTo(264)
            make.bottom.equalTo(-49)
            make.right.left.equalTo(0)
            
        }
    
    }
    
    func reloadData(){
    
        
//        Alamofire.request("https://api.108tian.com/mobile/v3/SceneDetail?id=528b91c9baf6773975578c5c/").responseJSON
//            {
//                response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
//        }
        let parameters: Parameters = [
            "menu": "土豆",
            "pn":  1,
            "rn": "10",
            "key": "2ba215a3f83b4b898d0f6fdca4e16c7c",
        ]
        Alamofire.request("http://apis.haoservice.com/lifeservice/cook/query?", method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
//                debugPrint(response)
                if let JSON = response.result.value {
                                    print("JSON: \(JSON)")
                                }
        }
        

        
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
    
    // MARK: - cir Delegate
    func clickCurrentImage(_ currentIndxe: Int){
        print("\(currentIndxe)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
