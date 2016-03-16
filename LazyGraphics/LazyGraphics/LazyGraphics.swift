//
//  LazyGraphics.swift
//  LazyGraphics
//
//  Created by Marcos Rodriguez on 3/15/16.
//  Copyright © 2016 Marcos Rodriguez Vélez. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

public class LazyGraphics {
    
    public class func applyBorder(view view: UIView, borderWidth: CGFloat, borderColor: UIColor) {
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor.CGColor
    }
    
    public class func applyShadow(view view: UIView, color: UIColor, opacity: Float, offset: CGSize? = nil, radius: CGFloat? = nil, path: CGPath? = nil) {
        view.layer.shadowColor = color.CGColor
        view.layer.shadowOpacity = opacity
        
        if let offset = offset {
            view.layer.shadowOffset = offset
        }
        
        if let radius = radius {
            view.layer.shadowRadius = radius
        }
        
        if let path = path {
            view.layer.shadowPath = path
        }
    }
    
    public class func applyRoundCornersWithBorder(view view: UIView, borderColor: UIColor, borderWidth: CGFloat) {
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.borderColor = borderColor.CGColor
        view.layer.borderWidth = borderWidth
        view.layer.cornerRadius = view.frame.width/2
    }
    
    public class func applyRoundCorners(view view: UIView) {
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.layer.cornerRadius = view.frame.width/2
    }
    
}