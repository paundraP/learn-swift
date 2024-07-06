import Foundation

func greeting () {
    "Hi. No return value"
}

func plusTwo(value :Int){
    let newValue = value + 2
}

/// With return value
func squareVal(value: Int) -> Int {
    let newValue = value * value
    return newValue
}

greeting()
plusTwo(value: 4)
squareVal(value: 2)

/// We must add the name of the argument, if we dont add it, error will occur
func add(X: Int, Y: Int) -> Int {
    return X + Y
}
/// add(10,12) : error
add(X: 10, Y: 11)

// Ignore argument name when invoke function
func helloGreeting(_ name: String) {
    "Hai \(name), apa kabar?"
}
/// Ignore argument name
helloGreeting("Paundra")

/// Nested Function
func addWith2And3(with value: Int) -> Int {
    func addWith3(value: Int) -> Int {
        return value + 3
    }
    return addWith3(value: value + 2)
}
addWith2And3(with: 30)

/// Default value of argument
func getFullName(firstName: String = "Paundra",lastName: String = "Fand") -> String {
    "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Nemi", lastName: "Fand")
getFullName(lastName: "Pujo")
