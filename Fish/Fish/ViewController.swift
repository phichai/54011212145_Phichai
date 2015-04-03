//
//  ViewController.swift
//  Fish
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = UIView()
        square.backgroundColor = UIColor.blueColor()
        square.frame = CGRect(x: 0, y: 175, width: 70, height: 70)
        self.view.addSubview(square)
        
        UIView.animateWithDuration(20.0, animations: {
            
            }, completion: { animationFinished in
                square.removeFromSuperview()
                
        })
       

        
    }
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        let numberOfFish = Int(self.numberOfFishSlider.value)
        for loopNumber in 1...numberOfFish{
            let duration = 5.0
            let options = UIViewAnimationOptions.CurveLinear
            
            let delay = NSTimeInterval(10 + arc4random_uniform(100)) / 1000
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            let fish = UIImageView()
            fish.image = UIImage(named: "fish_1.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
               
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    fish.removeFromSuperview()
                    
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
