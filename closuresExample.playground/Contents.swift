//: Playground - noun: a place where people can play

func translate(greetings: String) -> (String) ->String {
    return {
        (name: String) -> String in
            return greetings + " " + name
    }
}

var greetingEnglish = translate(greetings: "Hello")
var greetingGerman = translate(greetings: "Guten Tag")

greetingEnglish("Mau")
greetingGerman("Mau")
