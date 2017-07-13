//
//  BinaryCell.swift
//  BinaryCounter
//
//  Created by Robert on 7/12/17.
//  Copyright © 2017 Robert Villarreal. All rights reserved.
//

import UIKit

class BinaryCell: UITableViewCell {
    
    var delegate: BinaryCellDelegate?
    
    @IBOutlet weak var removeButton: UIButton!
    
    @IBOutlet weak var binaryLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addBinary(_ sender: UIButton) {
        let val = Int(binaryLabel.text!)
        delegate?.addBinaryToSum(by: self, with: val! )
    }
    
    @IBAction func subtractBinary(_ sender: UIButton) {
        let val = Int(binaryLabel.text!)
        delegate?.subtractBinaryToSum(by: self, with: val! )
    }
    
}
 
