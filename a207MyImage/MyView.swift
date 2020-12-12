//
//  MyView.swift
//  a207MyImage
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit

class MyView: UIView {

    var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
        
        
//        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
                                  UIView.AutoresizingMask.flexibleHeight ]
        addSubview(view)
    }
    
    
    func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: "MyView", bundle: nil )
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }



}
