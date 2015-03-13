//
//  ViewController.swift
//  Exam1_54011212145
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var Sum1: UITextField!
    @IBOutlet weak var Sum2: UITextField!
    @IBOutlet weak var Sum3: UITextField!
    @IBOutlet weak var Show: UITextField!
    
   

    @IBAction func SumAll(sender: AnyObject) {
        Show.text = Sum1.text + Sum2.text + Sum3.text
        
//        if(Show == "+"){
//            var x = add()
//            return x
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func AllSum() ->Double{
//        var tSum1 = Double((Sum1.text as NSString).doubleValue)
//        var tSum2 = Double((Sum2.text as NSString).doubleValue)
//        var tSum3 = Double((Sum3.text as NSString).doubleValue)
//        
//        if(){
//            var sum = Sum1 + Sum2 + Sum3
//            return sum
//        }
//    }
    
//    func add() ->Int{
//        var totoll = Sum1 + Sum2 + Sum3
//        return totoll
//        
//    }
//    
//    func Yes() ->Int{
//        if(SumAll >= "80"){
//            printf("Score = %d , You Grade : A \n", score); break;
//        }
//        if(SumAll >= "74" && <="79.99"){
//            printf("Score = %d , You Grade : B+ \n", score); break;
//        }
//        if(SumAll >= "68" && <="73.99"){
//            printf("Score = %d , You Grade : B+ \n", score); break;
//        }
//        if(SumAll >= "62" && <="67.99"){
//            printf("Score = %d , You Grade : C+ \n", score); break;
//        }
//        if(SumAll >= "56" && <="61.99"){
//            printf("Score = %d , You Grade : C \n", score); break;
//        }
//        if(SumAll >= "50" && <="55.99"){
//            printf("Score = %d , You Grade : D+ \n", score); break;
//        }
//        if(SumAll >= "44" && <="49.99"){
//            printf("Score = %d , You Grade : D \n", score); break;
//        }
//        if(SumAll <= "43.99"){
//            printf("Score = %d , You Grade : F \n", score); break;
//        }
//        return SumAll
//    }
//    


}

