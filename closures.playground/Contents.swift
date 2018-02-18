//: Playground - noun: a place where people can play

/*
let validateEvenNumber = {(number: Int) -> Bool in
    return number % 2 == 0
}
*/

/*
let validateEvenNumber = {(number: Int) -> Bool in number % 2 == 0 }
 */

let validateEvenNumber : (Int) -> Bool = { $0 % 2 == 0 }

validateEvenNumber(-2)
validateEvenNumber(-1)
validateEvenNumber(0)
validateEvenNumber(5)
validateEvenNumber(8)

func validator(param: String, funcValidator : (String) -> Bool) -> Bool{
    return funcValidator(param)
}

let validateName : (String) -> Bool = { $0.count > 6 }
let validateLastName : (String) -> Bool = { $0.count > 8 }
let validatePhone : (String) -> Bool = { $0.count == 10 }

var functionTypeValidate: (String) -> Bool = validateName

validator(param: "Mauricio", funcValidator: validateName)
validator(param: "Hernández", funcValidator: validateLastName)
validator(param: "5512341234", funcValidator: validatePhone)

