//: Playground - noun: a place where people can play

class Table {
    private var material: String
    
    init(material: String){
        self.material = material
    }
    
    func shapeTable() -> String {
        return "Cuadrada"
    }
    
    func descTable() -> String {
        return "Table made of \(material) for 4 people."
    }
}

class TableCircle : Table{
    override func shapeTable() -> String {
        return "Circle"
    }
}

var table1 = Table(material: "wood")
table1.shapeTable()
print(table1.descTable())

var table2 = TableCircle(material: "glass")
table2.shapeTable()
print(table2.descTable())
