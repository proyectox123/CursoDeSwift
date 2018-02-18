//: Playground - noun: a place where people can play

func oneFunction(){
    
}

func otherFunc(param: String){
    print(param)
}

otherFunc(param: "Hello world!")

//var appleTV = 149.0
//let appleTVIVA = appleTV * 0.15
//let appleTVPrecio = appleTV + appleTVIVA

//var macbookPro = 149.0
//let macbookProIVA = macbookPro * 0.15
//let macbookProPrecio = macbookPro + macbookProIVA

func calculateIVA(price: Double) -> Double{
    let iva = 0.15
    let totalPrice = price + (price * iva)
    return totalPrice
}

calculateIVA(price: 149.0)
calculateIVA(price: 199.0)
