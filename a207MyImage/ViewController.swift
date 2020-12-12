//
//  ViewController.swift
//  a207MyImage
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let newView = MyView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        self.view.addSubview(newView)
        
        
    }


}

