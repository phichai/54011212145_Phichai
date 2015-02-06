//
//  ViewController.swift
//  TipCalculator
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

    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxtPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        for (tipPct, tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChangd(sender: AnyObject) {
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        
    }
    
    let tipCalc = tipCalculetorModel (total: 33.25, taxPct: 0.06)
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        taxtPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxPctLabel.text = "Tax Percentage (\(Int(taxtPctSlider.value))%)"
        resultsTextView.text = ""
    }
}


