//
//  ViewController.swift
//  Animation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {

    var square: UIView!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var firstContact = false
    var snap: UISnapBehavior!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
        
        square = UIView(frame: CGRect (x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        collision = UICollisionBehavior(items: [square])/*แบบตกทะลุลงด้านล่าง*/
//        collision = UICollisionBehavior(items: [square, barrier])/*แบบตกลงลงกระแทรกสิ่งกีดขวาง*/
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        collision.collisionDelegate = self
        collision.action = {
            println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
        }
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square])
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)
    }
    
    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3) {
            collidingView.backgroundColor = UIColor.grayColor()
            
            if( !self.firstContact ){
                self.firstContact = true
                
                let square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
                square.backgroundColor = UIColor.grayColor()
                self.view.addSubview(square)
                
                self.collision.addItem(square)
                self.gravity.addItem(square)
                
                let attach = UIAttachmentBehavior (item: collidingView, attachedToItem: square)
                self.animator.addBehavior(attach)
            }
        }
       
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if (snap != nil){
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

