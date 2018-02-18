//: Playground - noun: a place where people can play

import UIKit

var text : String = "A loooooooong text."

extension String {
    func isTooLong(limit: Int = 8) -> Bool{
        if self.count > limit {
            return true
        }else{
            return false
        }
    }
    
    func convertToHastTag() -> String{
        return "#\(self)"
    }
}

text.isTooLong(limit: 20)

var platziConf = "PlatziConf2018"
platziConf.convertToHastTag()
