//
//  BinaryCounterTableViewController.swift
//  BinaryCounter
//
//  Created by Robert on 7/12/17.
//  Copyright © 2017 Robert Villarreal. All rights reserved.
//

import UIKit

class BinaryCounterTableViewController: UITableViewController, BinaryCellDelegate {
    
    @IBOutlet weak var binaryTotal: UILabel!
    
    var sum = 0
    
    func addBinaryToSum(by contoller: BinaryCell, with int: Int) {
        let val = int
        print(val)
        sum = sum + val
        binaryTotal.text = "Total: " + String(sum)
        
    }
    
    func subtractBinaryToSum(by contoller: BinaryCell, with int: Int) {
        let val = int
        print(val)
        sum = sum - val
        binaryTotal.text = "Total: " + String(sum)
    }
    
    // Determine the amount of Cells to create
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    // Create Cells using Custon Cell Prototype
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell" , for: indexPath) as! BinaryCell
        cell.binaryLabel.text = String(describing: pow(10, indexPath.row))
        cell.delegate = self
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        binaryTotal.text = "Total: " + String(sum)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    


}

