//
//  SView.swift
//  RDPen
//
//  Created by KatagiriSo on 2014/07/15.
//  Copyright (c) 2014年 KatagiriSo
// This software is released under the MIT License.
// http://opensource.org/licenses/mit-license.php
//

import UIKit

struct MyStruct {
    var a = 1;
    var b = 2;
    func f (x:Int) -> Int {
        return x;
    }
}

extension MyStruct {
    static func t (x:Int) -> Int {
        return x;
    }
    func g (x:Int) -> Int {
        return x;
    }
}







class SView: UIView {

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }
    
    init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder);
    }

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code

        var p:RDPen = RDPen(c: UIGraphicsGetCurrentContext())
        p.lineWidth(20);
        p.strokeEllipseInRect(CGRect(x: 100, y: 100, width: 100, height: 100))
        p.setRGBFillColor(1.0, g: 1.0, b: 0.3, a: 0.3)
        p.setRGBStrokeColor(1.0, g: 0.3, b: 0.5, a: 0.3)
        p.strokeEllipseInRect(CGRect(x: 100, y: 100, width: 100, height: 100))
        p.fillEllipseInRect(CGRect(x:120, y:120, width:60, height:60))
        
    }
}

