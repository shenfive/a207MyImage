//
//  ViewController.swift
//  a207MyImage
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print(getNetworkStatus())
        if let url = URL(string: "https://www.apple.com.tw/"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    func getNetworkStatus()->Bool{
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
            return false
        }else{
            return true
        }
    }

    @IBAction func urlAction(_ sender: Any) {
        
        if let url = urlInput.text{
            if let theUrl = URL(string: "https://" + url){
                let request = URLRequest(url: theUrl)
                webView.load(request)
            }
        }
        
        
    }
    

}

