import Foundation

// In swift, there is 2 ways to declare a variable, we can use var and let
// let cannot reassign (like const in javascript)
// var can reassign

let myName = "Paundra"
let yourName = "Pujo"

// myName = yourName : error

let names = [
    myName,
    yourName
]

var copy = names
copy.append("Darmawan")

// we can change the value of let variable use like this

let zoo = NSMutableArray(
    array: [
    "Snake",
    "Zebra"
    ]
)

var copyOfZoo = zoo
copyOfZoo.add("Chicken")
zoo
