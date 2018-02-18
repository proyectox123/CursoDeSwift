//: Playground - noun: a place where people can play

//class TableSquare{
//    var area : Double
//
//    init(area: Double) {
//        self.area = area
//    }
//
//    func getArea(width: Double, height: Double) -> Double{
//        return width + height
//    }
//}
//
//class TableTriangle{
//    var area : Double
//
//    init(area: Double) {
//        self.area = area
//    }
//
//    func getArea(base: Double, height: Double) -> Double{
//        return (base * height) / 2
//    }
//}

class TableBasic{
    var area : Double
    
    init(area: Double) {
        self.area = area
    }
    
    func getArea(param1: Double, param2: Double){}
}

class TableSquare: TableBasic{
    override func getArea(param1: Double, param2: Double){
        self.area = param1 * param2
    }
}

class TableTriangle: TableBasic{
    override func getArea(param1: Double, param2: Double){
        self.area = (param1 * param2) / 2
    }
}
