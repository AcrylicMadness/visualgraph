//
//  VGEdge.swift
//  VisualGraph
//
//  Created by Кирилл Аверкиев on 12.04.16.
//  Copyright © 2016 Кирилл Аверкиев. All rights reserved.
//

import Foundation

struct VGEdge {
    
    var start: VGPoint
    var end: VGPoint
    
    init(start: VGPoint, end: VGPoint) {
        
        self.start = start
        self.end = end
        
    }
    
}