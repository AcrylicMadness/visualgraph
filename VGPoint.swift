//
//  VGPoint.swift
//  VisualGraph
//
//  Created by Кирилл Аверкиев on 12.04.16.
//  Copyright © 2016 Кирилл Аверкиев. All rights reserved.
//

import Foundation

struct VGPoint {
    
    var x: Float
    var y: Float
    var z: Float
    
    init(x: Float, y: Float, z: Float) {
        
        self.x = x
        self.y = y
        self.z = z
    
    }
    
    mutating func rotateAroundAxis(axis: VGAxis, withAngle angle: Float) {
        
        switch axis {
        case .z:
            x = cos(angle) * x - sin(angle) * y
            y = sin(angle) * x + cos(angle) * y
        case .y:
            x = cos(angle) * x + sin(angle) * y
            z = -sin(angle) * x + cos(angle) * z
        default:
            break
        }
        
    }
    
}