//: Playground - noun: a place where people can play


var accountBank = 200.0

var appleTvPrice = 199.00

var iva = appleTvPrice * 0.15

appleTvPrice = appleTvPrice + iva

if(accountBank - appleTvPrice > 0){
    print("You can buy it :D")
}else{
    print("You can't buy it :(")
}
