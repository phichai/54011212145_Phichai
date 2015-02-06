//เครื่องคิดเลข
class calotator {
    var intput1: Int
    var intput2: Int
    var offtion: String
    
 
    //สร้างตัวแปล
    init (x1:Int,x2:Int,x3:String){
        self.intput1 = x1
        self.intput2 = x2
        self.offtion = x3
    }
    //เชคการทำงานของฟังก์ชั้น
    func cal() ->Int{
        if(offtion == "+"){
            var x = add()
            return x
        }
        if(offtion == "-"){
            var x = minus()
            return x
        }
        if(offtion == "*"){
            var x = multiply()
            return x
        }
        if(offtion == "/"){
            var x = divide()
            return x
        }
        return 0
    }
    //การทำงานของฟังก์ชั้น
    func add() ->Int{
        var totoll = intput1 + intput2
        return totoll
    
    }
    func minus() ->Int{
        var totoll = intput1 - intput2
        return totoll
        
    }
    func multiply() ->Int{
        var totoll = intput1 * intput2
        return totoll
        
    }
    func divide() ->Int{
        var totoll = intput1 / intput2
        return totoll
        
    }
}
let cal = calotator(x1: 52, x2: 5, x3: "/")
cal.cal()
