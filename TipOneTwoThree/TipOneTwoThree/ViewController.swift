//
//  ViewController.swift
//  TipOneTwoThree
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var sum : Int = 0
    
    @IBOutlet weak var butOne: UIButton!
    @IBOutlet weak var butTwo: UIButton!
    @IBOutlet weak var butThree: UIButton!
    @IBOutlet weak var butreset: UIButton!
    
    @IBOutlet weak var showOne: UILabel!
    @IBOutlet weak var showTow: UILabel!
    @IBOutlet weak var showThree: UILabel!
    
    @IBAction func acOne(sender: AnyObject) {
        sum += 1
        showOne.text = String(format: "%d", sum)
        
    }
    @IBAction func acTow(sender: AnyObject) {
        sum += 2
        showTow.text = String(format: "%d", sum)
    }
    @IBAction func acThree(sender: AnyObject) {
        sum += 3
        showThree.text = String(format: "%d", sum)
    }
    
    @IBAction func acReset(sender: AnyObject) {
        showTow.text = "0"
        showOne.text = "0"
        showThree.text = "0"
        sum = 0
    }
}

