import Foundation

let myAge = 18
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
}else  if myAge < yourAge {
    "I'm younger than you"
}else {
    "Hey, we are the same age!"
}


let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

/// There are three different types of operator in swift
/// 1. Unary prefix : either prefix and postfix only work with one value
let foo = !true
/// 2. Unary postfix
let name = Optional("Paundra")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
/// 3. Binary infix : can hold more than one value
let result = 1 + 2
let myName = "mint" + " " + "cocs"
/// 4. Ternary operator
let assignment = 5
let mySubsmission = 4
let isDone = mySubsmission == assignment
    ? "You're Done! Congrats"
    : "Please submit the assignment"
