//: Playground - noun: a place where people can play
var arrayEmpty = [String]()
arrayEmpty.append("Element 1")
arrayEmpty.append("Element 2")

arrayEmpty.insert("Element x", at: 1)

var companies = ["Google", "Apple", "Samsung"]
companies[1]
companies[2]

companies.first
companies.last
companies.count
companies.index(of: "Samsung")
companies.isEmpty

companies.append("Huawei")
//for i in 0...companies.count - 1{
    //print(companies[i])
//}

/**************************************/
var companiesDictionary = ["Apple": "iPhoneX",
                            "Samsung": "Galaxy 8",
                            "Google": "Pixel 2"]
companiesDictionary["Google"]
companiesDictionary.isEmpty
companiesDictionary.count

let keys = [String](companiesDictionary.keys)
let values = [String](companiesDictionary.values)

/****************************************/

var chess: Set<String> = ["King", "Queen", "Knight"]
var cards: Set<String> = ["King", "Joker", "Queen"]

chess.insert("Tower")

chess.intersection(cards)
chess.union(cards)
