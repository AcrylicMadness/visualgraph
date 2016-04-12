//
//  VGOperators.swift
//  VisualGraph
//
//  Created by Кирилл Аверкиев on 12.04.16.
//  Copyright © 2016 Кирилл Аверкиев. All rights reserved.
//

import Foundation

func +(left: VGPoint, right: VGPoint) -> VGPoint {
    return VGPoint(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
}

func -(left: VGPoint, right: VGPoint) -> VGPoint {
    return VGPoint(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
}

func *(left: VGPoint, right: Float) -> VGPoint {
    return VGPoint(x: left.x * right, y: left.y * right, z: left.z * right)
}

func *(left: Float, right: VGPoint) -> VGPoint {
    return VGPoint(x: right.x * left, y: right.y * left, z: right.z * left)
}

func *(left: VGPoint, right: VGPoint) -> VGPoint {
    return VGPoint(x: left.x * right.x, y: left.y * right.y, z: left.z * right.z)
}

infix operator ** { associativity left precedence 160 }
func **(left: VGPoint, right: VGPoint) -> VGPoint {
    return VGPoint(x: left.y * right.z - left.z * right.y, y: left.z * right.x - left.x * right.z, z: left.x * right.y - left.y * right.z)
}

let test = VGPoint(x: 5, y: 5, z: 5)
let lol = test * 5