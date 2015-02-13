//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
        let tipCal = tipCaculatorModel(total: 33.25, taxPct: 0.06)
        var possibleTips = Dictionary<Int, (tipAmt: Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        refreshUI()
        
        self.tabelView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var tabelView: UITableView!

    @IBOutlet weak var TotalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    @IBAction func calculatedTapped(sender: AnyObject) {
        //1
        tipCal.total = Double((TotalTextField.text as NSString).doubleValue)
        //2
        possibleTips = tipCal.returnPossibleTips()
        sortedKeys = sorted(Array(possibleTips.keys))
        //3
        tabelView.reloadData()
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCal.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        TotalTextField.resignFirstResponder()
    }
   
    
    func refreshUI() {
        TotalTextField.text = String(format: "%0.2f", tipCal.total)
        taxPctSlider.value = Float(tipCal.taxPct) * 100.0
        taxPctLabel.text = "tax Percentage (\(Int(taxPctSlider.value))%)"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKeys.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%:"
        cell.detailTextLabel!.text = String(format: "tip: $%0.2f, Total: $%0.2f", tipAmt,total)
        
        return cell
    }
}

