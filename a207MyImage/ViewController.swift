//
//  ViewController.swift
//  a207MyImage
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print(getNetworkStatus())
        if let url = URL(string: "https://www.ichih.com/"){
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



}

