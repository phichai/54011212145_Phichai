

//ซื้อผลไม้
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