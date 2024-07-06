import Foundation

///An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

enum compassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = compassPoint.west
directionToHead = .east

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

/// We can also iterating use enum
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}

/// Associated Value

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

/// how to check is wwwApple is in wwwUrl
/// wrong
//if wwwApple == Shortcut.wwwUrl(path: URL(string: "https://apple.com")!){
//    "damn"
//}
/// correct
if case let .wwwUrl(path) = wwwApple {
    path
}

enum Vehicle {
    case Car(manufacturer: String, model: String)
    case Bike(manufacturer: String, yearMade: Int)
    
    func getManufacturer() -> String {
        switch self {
        case let .Car(manufacturer, _):
            return "your type of car is \(manufacturer)"
        case let .Bike(manufacturer, _):
            return "your type of bike is \(manufacturer)"
        }
    }
}

let car = Vehicle.Car(manufacturer: "Tesla", model: "X")
car.getManufacturer()
let bike = Vehicle.Bike(manufacturer: "Harley Davidson", yearMade: 1987)
bike.getManufacturer()

/// Recursive Enumerations
/// A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases. You indicate that an enumeration case is recursive by writing indirect before it, which tells the compiler to insert the necessary layer of indirection.

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
        switch expression {
            case let .number(value):
                return value
            case let .addition(x, y):
                return evaluate(x) + evaluate(y)
            case let .multiplication(x, y):
                return evaluate(x) * evaluate(y)
        }
}

print(evaluate(product))
print((evaluate(sum)))



