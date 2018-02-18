func showNumbers<T, P>(n1: T, n2: P){
    print("The numbers are \(n1) and \(n2)")
}

showNumbers(n1: 3, n2: 8)
showNumbers(n1: 3.9, n2: 8.1)
showNumbers(n1: "3", n2: "8")

showNumbers(n1: 10, n2: "88")
/////////////////////////////////
class Automobile{
    var color: String
    
    init(color: String){
        self.color = color
    }
}

class Moto{
    var color: String
    
    init(color: String){
        self.color = color
    }
}

class Deposit<Vehicles>{
    var vehicles: [Vehicles] = []
    
    func addVehicle(vehicle: Vehicles){
        self.vehicles.append(vehicle)
    }
    
    func deleteVehicle() -> Vehicles{
        return self.vehicles.remove(at: 0)
    }
}

var depositMoto = Deposit<Moto>()
var moto1 = Moto.init(color: "Red")
var moto2 = Moto.init(color: "Green")
var moto3 = Moto.init(color: "Blue")

depositMoto.addVehicle(vehicle: moto1)
depositMoto.addVehicle(vehicle: moto2)
depositMoto.addVehicle(vehicle: moto3)
depositMoto.vehicles
depositMoto.deleteVehicle()
depositMoto.deleteVehicle()
depositMoto.vehicles
