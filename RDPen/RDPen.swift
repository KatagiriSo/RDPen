//
//  RDPen.swift
//  RDPen
//
//  Created by KatagiriSo on 2014/07/15.
//  Copyright (c) 2014年 KatagiriSo
// This software is released under the MIT License.
// http://opensource.org/licenses/mit-license.php
//

import UIKit

class RDPen {
    var ref:CGContextRef;
    
    init (c:CGContextRef) {
        ref = c
    }
}

extension RDPen {
    func lineWidth(w:CGFloat) {
        CGContextSetLineWidth(ref, w)
    }
    func strokeEllipseInRect(r:CGRect) {
        CGContextStrokeEllipseInRect(ref, r);
    }
    func setRGBFillColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) {
        CGContextSetRGBFillColor(ref, r, g, b, a)
    }
    func setRGBStrokeColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) {
        CGContextSetRGBStrokeColor(ref, r, g, b, a)
    }
    func fillEllipseInRect(r:CGRect) {
        CGContextFillEllipseInRect(ref, r)
    }
}

