//: Playground - noun: a place where people can play
enum DivisionErrors: Error{
    case DivisionWithZero
}

func divide(a: Int, b: Int) throws -> Int{
    if b == 0 {
        throw DivisionErrors.DivisionWithZero
    }
    
    return a/b
}

do{
    let result = try divide(a: 8, b: 0)
}catch(DivisionErrors.DivisionWithZero){
    print("It is not possible to divide between zero.")
}
