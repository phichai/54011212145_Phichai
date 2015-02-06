//
//  Tip calcuiatormodel.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
class tipCalculetorModel {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double{
        get{
            return total / (taxPct + 1)
        }
    }
    
  
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        
    }
    
    
    func calcTipWithYipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
   
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
      //  var numbleOfItems = possibleTipsInferred.count
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithYipPct(possibleTip)
        }
        return retval
    }
}
