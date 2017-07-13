//
//  BinaryCellDelegate.swift
//  BinaryCounter
//
//  Created by Robert on 7/12/17.
//  Copyright © 2017 Robert Villarreal. All rights reserved.
//

import UIKit

protocol BinaryCellDelegate {
    func addBinaryToSum(by contoller: BinaryCell, with int: Int)
    func subtractBinaryToSum(by contoller: BinaryCell, with int: Int)
}
