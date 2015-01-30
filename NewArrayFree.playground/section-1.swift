

//ซื้อผลไม้ (Array)
class StoreFruit {
    let fruit: [String] = ["ส้ม","มะพร้าว","แอปเปิ้ล","องุ่น","แตงโม"]
    let price: [Int] = [20,15,10,40,35]
    var sum: String
    var totoll: Int
    
    init (x1 : String, x2 : Int){
        self.sum = x1
        self.totoll = x2
    }
    
    func buy() ->Int {
        var tall = 0
        for (var i = 0 ; i < fruit.count ; i++){
            if (sum == fruit[i]){
                tall = price[i]
            }
            
        }
        return tall * totoll
    }
    
}
let fig = StoreFruit(x1: "แอปเปิ้ล", x2: 3)
fig.buy()


//Dictionary

class StoreFruit1 {
    var fruitDri: [String :Int] = ["ส้ม":20,"มะพร้าว":15,"แอปเปิ้ล":10,"องุ่น":40,"แตงโม":35]
    
    init (){}
    
    func allProduct(po : String , pr : Int){
        fruitDri[po] = pr
    }
    func deleleProduct(po : String ){
        fruitDri[po] = nil
    }
    
    func show() ->[ String : Int ]{
        return fruitDri
    }
}
let ne = StoreFruit1()
ne.show()

ne.allProduct("เบอร์รี้", pr: 55)

ne.deleleProduct("เบอร์รี้")

