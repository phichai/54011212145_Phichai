//
//  TableViewController.swift
//  customUITableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listData = Array<balloon>()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listData = data().getdata()
        
        
    }

   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as TableViewCell
        
                    cell.customImageView.image = listData[indexPath.row].balloonImage
                    cell.customLable.text = listData[indexPath.row].balloonName
        
                return cell
    }



    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let msg = "You selected : \(listData[indexPath.row].balloonName)"
        let alert = UIAlertController(title: "You Selection", message: msg, preferredStyle: .Alert)
        let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(okButton)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

}
