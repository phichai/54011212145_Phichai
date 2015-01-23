/// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//[key_1: value 1 , key_2: value 2 , key_3: value 3 ]
var airports: [String: String] = ["TYO":"Tokyo", "DUB":"Dublin"]
if airports.isEmpty {
    println("The airports dictionary is empty.")
    
} else {
    println("The airports dictionary is not empty.")
}
print("The airports dictionary conntains \(airports.count) items.")


airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"


if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB"){
    println("The remove airports's name is \(removedValue).")
} else {
    println("The airports dictionary does not contain a value for DUB.")
}

