import Foundation

protocol Edible {
    var eatMessage: String { get }
}

class Banana: Edible {
    var eatMessage: String {
        return "Eat Banana"
    }
}

class Apple: Edible {
    var eatMessage: String {
        return "Eat Apple"
    }
}

class Brownie: Edible {
    var eatMessage: String {
        return "Eat Brownie"
    }
}

func showEdibleMessage(edible: Edible){
    print(edible.eatMessage)
}

//print(showEdibleMessage(edible: Banana()))
//print(showEdibleMessage(edible: Apple()))
//print(showEdibleMessage(edible: Brownie()))


extension String {
    func lastWordLenght() -> Int {
        return self.components(separatedBy: NSCharacterSet.whitespacesAndNewlines).last?.count ?? 0
    }
}

print("Lorem ipsum dolor sit amet".lastWordLenght())



extension String {
    func DropFirstAndLastChars() -> String {
        let firstChar = self.first ?? Character("")
        let lastChar = self.last ?? Character("")
        return String(firstChar) + String(lastChar)
    }
}

print("Lorem ipsum dolor sit amet".DropFirstAndLastChars())


extension Int {
    func IntToString() -> String {
        return String(self)
    }
}

print(5.IntToString())


extension Date {
    func DateToString() -> String {
        let dateFormatter = DateFormatter()
        return dateFormatter.string(from: self)
    }
}

let date = Date()

print(date.DateToString())
