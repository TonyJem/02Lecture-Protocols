import Foundation

//MARK: - Protocols:

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


//MARK: - Extentions:
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
        dateFormatter.dateFormat = "YYYY-MM-dd"
        return dateFormatter.string(from: self)
    }
}
let date = Date()
print(date.DateToString())


//MARK: - Closures:



let block: (String) -> String = { myVar in
    return myVar + " - iOS "
}
print(block("Your string"))


let skaicius: (Int) -> Int = { myVar in
    return myVar + 1
}
print(skaicius(5))

//Sort higher than 4
let grades = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//grades.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)

let goodMarks: ([Int]) -> [Int] = { array in
    var resultArray: [Int] = []
    
    for number in array {
        if number > 4 {
            resultArray.append(number)
        }
    }

    return resultArray
}
print(goodMarks(grades))


// Sort by first letter descenting:
let names = ["Darius", "Karolis", "Bronius"]




