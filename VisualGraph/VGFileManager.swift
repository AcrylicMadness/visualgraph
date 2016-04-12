//
//  VGFileManager.swift
//  VisualGraph
//
//  Created by Кирилл Аверкиев on 12.04.16.
//  Copyright © 2016 Кирилл Аверкиев. All rights reserved.
//

import Foundation

class VGFileManager {
    
    class func fileWithName(name: String) -> VGFile? {
        
        if let directory : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            
            let path = directory.stringByAppendingPathComponent(name)
            return VGFile(path: path)
        }
        
        return nil
        
    }
    
    class func fileFromBundleWithName(name: String) -> VGFile? {
        
        let bundle = NSBundle.mainBundle()
        
        if let path = bundle.pathForResource(name, ofType: "vgm   ") {
            return VGFile(path: path)
        } else {
            return nil
        }
        
    }
    
}