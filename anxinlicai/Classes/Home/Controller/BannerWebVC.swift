//
//  BannerWebVC.swift
//  anxinlicai
//
//  Created by ddSoul on 16/12/22.
//  Copyright © 2016年 邓西亮. All rights reserved.
//

import UIKit
import WebKit

class BannerWebVC: UIViewController {

    let webView: WKWebView = WKWebView()
    let progressView :UIProgressView = UIProgressView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame = CGRect(x:0,y:0,width:self.view.width,height:self.view.height)

        self.view.addSubview(webView)
        webView.addObserver(self, forKeyPath: "estimatedProgress", options:.new, context: nil)
        
        progressView.frame = CGRect(x:0,y:0,width:self.view.width,height:2)
        progressView.backgroundColor = UIColor.red
        self.view.addSubview(progressView)
        progressView.progress = 1
        
        webView.load(NSURLRequest.init(url: NSURL(string:"http:www.baidu.com") as! URL) as URLRequest)

        // Do any additional setup after loading the view.
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress"  {
            print("fffffff")
//            progressView.alpha = 1.0
//            progressView.setProgress(Float(webView.estimatedProgress), animated: true)
//            
//            if webView.estimatedProgress >= 1.0 {
//                UIView.animate(withDuration: 0.3,
//                               delay: 0.3,
//                               options: UIViewAnimationOptions.curveEaseOut,
//                               animations: {
//                                self.progressView.alpha = 0
//                                },
//                               completion: {
//                                 finished in
//                                self.progressView.progress = 0
//                                print("")
//                })
//            }

        }
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
