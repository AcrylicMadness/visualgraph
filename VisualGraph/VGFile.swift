//
//  VGFile.swift
//  VisualGraph
//
//  Created by Кирилл Аверкиев on 12.04.16.
//  Copyright © 2016 Кирилл Аверкиев. All rights reserved.
//

import Foundation

class VGFile {
    
    private let path: String
    
    var stringValue: String? {
        didSet {
            writeString(stringValue!)
        }
    }
    
    init(path: String) {
    
        self.path = path
        stringValue = getString()
        
    }
    
    private func writeString(text: String) {
        
        do {
            try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
        }
        catch {
            print("error writing to file with path: \(path)")
        }

    }
    
    private func getString() -> String? {
        
        do {
            let returnValue = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            return returnValue
        }
        catch {
            return nil
        }
    }
    
}