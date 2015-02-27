//
//  data.swift
//  customUITableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getdata() -> Array<balloon>{
        var tempArray = Array<balloon>()
                
        let b1 = balloon(bImage:UIImage(named: "barcelona.png"), bName: "barcelona")
        tempArray.append(b1)
        
        let b2 = balloon(bImage:UIImage(named: "Arsenal.png"), bName: "Arsenal")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "manchester.png"), bName: "manchester")
        tempArray.append(b3)

       
        
        return tempArray
    }
   
}
