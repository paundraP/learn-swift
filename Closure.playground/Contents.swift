import Foundation

/// Closure is like anonymous func or arrow func in javascript

let add: (Int, Int) -> Int = {
    (X: Int, Y: Int) -> Int in
    X + Y
}
add(20, 40)

/// More example
let names = ["Christy", "Dandi", "Bark", "Eze", "Adrian"]
names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
/// shorthand
names.sorted(by: <)


/// Trailing Closure
/// Trailing closures are most useful when the closure is sufficiently long that it isn’t possible to write it inline on a single line.
func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
}

customAdd(20, 30) {
    (lhs: Int, rhs: Int) -> Int in lhs + rhs
}

/// slower, because compiler must check the data type and the return value
customAdd(10, 80){
    (lhs, rhs) in lhs + rhs
}
/// shorthand
customAdd(20, 50) { $0 + $1}

/// Add other function to a closure

func add10(_ value: Int) -> Int {
    return value + 10
}

func customAdd2(on value: Int, using function: (Int) -> Int) -> Int {function(value)}

customAdd2(on: 100, using: add10(_:))
