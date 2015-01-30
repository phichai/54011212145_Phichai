import UIKit


class zoo  {
    let animal:[String] = ["นก","เป็ด","ไก่"]
    let food:[String] = ["หนอน","หอย","ข้าว"]
    var sum: String
   
    init(a : String){
        self.sum = animal
        
    }
    
    func af() -> String{
        var tall = ""
        for (var i = 0; i < animal.count; i++){
            if (sum == animal){
                tall = food[i]
            }
        }
        return tall
    }
}

let fAnimal = zoo(animal: "ไก่")
fAnimal.af()
