//: Playground - noun: a place where people can play

enum ValidCards : String{
    case MasterCard
    case Visa
    case Chase
}

let cardVisa = ValidCards.MasterCard

let cardUser = "Chasee"

switch cardUser{
case ValidCards.MasterCard.rawValue:
    print("Valid card")
case ValidCards.Visa.rawValue:
    print("Valid card")
case ValidCards.Chase.rawValue:
    print("Not valid card")
default:
    print("It is not a card")
}
