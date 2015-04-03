//
//  ViewController.swift
//  ContainerViewTransitions
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    let pingSquare = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        self.container.frame = CGRect(x: 90, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
    
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
    
        self.redSquare.backgroundColor = UIColor.greenColor()
        self.blueSquare.backgroundColor = UIColor.yellowColor()
        self.pingSquare.backgroundColor = UIColor.purpleColor()
        

        self.container.addSubview(self.redSquare)   
    }

    @IBAction func animateButtonTapped(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)

    }
    @IBAction func animateDown(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    @IBAction func animateL(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromRight
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    @IBAction func animateR(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

