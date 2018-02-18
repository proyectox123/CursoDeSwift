//: Playground - noun: a place where people can play

func validator(param: String, funcValidator : (String) -> Bool) -> Bool{
    return funcValidator(param)
}

func validateName(name: String) -> Bool{
    return name.count > 6
}

func validateLastName(lastName: String) -> Bool{
    return lastName.count > 8
}

func validatePhone(phone: String) -> Bool{
    return phone.count == 10
}

var functionTypeValidate: (String) -> Bool = validateName

validator(param: "Mau", funcValidator: validateName(name:))
validator(param: "Mauricio", funcValidator: validateName(name:))
validator(param: "Hdez", funcValidator: validateLastName(lastName:))
validator(param: "Hernández", funcValidator: validateLastName(lastName:))
validator(param: "666", funcValidator: validatePhone(phone:))
validator(param: "5512341234", funcValidator: validatePhone(phone:))
