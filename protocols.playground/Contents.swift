//: Playground - noun: a place where people can play

protocol MyProtocol{
    var rand: Double{get set}
    func randomNumber()
}

class Sorteo : MyProtocol{
    var rand: Double = 5.55
    
    func randomNumber() {
        print(rand)
    }
}
////////////////Protocol Types////////////////

protocol TipoDeEstabilizador{
    var estabilizador: String {get set}
}

class CamaraIPhonePlus : TipoDeEstabilizador{
    var estabilizador: String = "Fìsico"
}

class CamaraIPhone : TipoDeEstabilizador{
    var estabilizador: String = "Digital"
}

class FanBoy {
    var name: String
    var celularConEstabilizador: TipoDeEstabilizador
    
    init(name: String, celularConEstabilizador: TipoDeEstabilizador) {
        self.name = name
        self.celularConEstabilizador = celularConEstabilizador
    }
    
    func especificaciones() -> String{
        return "Estabilizador de tipo \(celularConEstabilizador.estabilizador)"
    }
}

var iPhone = CamaraIPhone()
var fanBoy = FanBoy(name: "FanBoy", celularConEstabilizador: iPhone)
fanBoy.especificaciones()
////////////////Protocol Extensions////////////////
protocol Badge {
    func typeBadge() -> String
}

extension Badge where Self : UserNormal{
    func typeBadge() -> String{
        return "Normal User."
    }
}

class UserNormal: Badge{
}

class UserGuest: UserNormal{
}

class UserHost: Badge{
    func typeBadge() -> String {
        return "Host User."
    }
}

class UserVIP: UserHost{
    override func typeBadge() -> String {
        return "VIP User."
    }
}

var user1 = UserNormal()
user1.typeBadge()

var user2 = UserGuest()
user2.typeBadge()

var user3 = UserHost()
user3.typeBadge()

var user4 = UserVIP()
user4.typeBadge()







