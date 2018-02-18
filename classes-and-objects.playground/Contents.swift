//: Playground - noun: a place where people can play

class Table {
    private var material: String
    private var shape: String
    
    init(material: String, shape: String){
        self.material = material
        self.shape = shape
    }
    
    func shapeTable() -> String {
        return shape
    }
    
    func descTable() -> String {
        return "Table made of \(material), and shape of \(shape) for 4 people."
    }
}

var table1 = Table.init(material: "wood", shape: "square")
table1.shapeTable()
table1.descTable()

var table2 = Table.init(material: "glass", shape: "circle")
table2.shapeTable()
table2.descTable()
