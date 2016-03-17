//
//  LazyGraphics+Errors.swift
//  LazyGraphics
//
//  Created by Marcos Rodriguez on 3/16/16.
//  Copyright © 2016 Marcos Rodriguez Vélez. All rights reserved.
//

import Foundation

extension LazyGraphics {
    
    public enum Error: Int {
        case DimensionsNotMatching = 0
    }
    
    public enum Test: Int {
        case DimensionsMatch = 0
    }
    
    public class func isInvalidObject<T: UIView>(object: T, testType: LazyGraphics.Test) -> LazyGraphics.Error? {
        
        var error: LazyGraphics.Error?
        
        switch testType {
        case .DimensionsMatch:
            error = object.frame.height != object.frame.width ? .DimensionsNotMatching : nil
        }
        
        return error
    }
    
    internal class func printErrorDescription(error: LazyGraphics.Error) {
        var errorObject: NSError?
        switch error {
        case .DimensionsNotMatching:
           errorObject = NSError(domain: "com.marcosrdz.LazyGraphics", code: LazyGraphics.Error.DimensionsNotMatching.rawValue, userInfo: ["errorMessage": "The frame dimensions of the provided UIView don't match. This could provide unexpected results. Please, make sure they are identical. (e.g. frame.height = 120, frame.width = 120"])
        }
        
        if let errorObject = errorObject {
            print(errorObject)
        }
    }
    
    
}