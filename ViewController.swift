//
//  ViewController.swift
//  网页视图
//
//  Created by 方瑾 on 2019/3/11.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    let fakeUrl = URL(string: "https://www.google.co.jp")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        webView.navigationDelegate = self
        
        if let realUrl = fakeUrl {
            let request = URLRequest(url: realUrl)
            webView.load(request)
        }
        
        
    }
}


extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("abcabc")    //刚刚开始加载的时候，对于菊花等插件的操作
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        <#code#>               //结束的时候，菊花等插件处理
    }
}

