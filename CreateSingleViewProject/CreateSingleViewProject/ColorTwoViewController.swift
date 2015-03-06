//
//  ColorTwoViewController.swift
//  LabSegue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol  ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}
class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
  
    
    
        @IBAction func saveColor(sender: AnyObject) {
        if(delegate != nil){
            delegate?.myVCDidFinish(self, text: colorLabel!.text!)
        }
        
    }
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text
        if(colorLabel.text == "Green") {
            colorLabel.textColor = UIColor.greenColor()
        }
        else if (colorLabel.text == "Blue"){
            colorLabel.textColor = UIColor.blueColor()
        }
        else {
            colorLabel.textColor = UIColor.redColor()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colorString
    }
    
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}