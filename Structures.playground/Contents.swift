import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)
foo.name
foo.age

struct commodoreComputer {
    let name: String
    let manufacturer = "Commodore"
    
}

let c64 = commodoreComputer(name: "My commodore 64")
let c128 = commodoreComputer(name: "My commodore 128")

struct Person2 {
    let firstName: String
    let lastName: String
    //    let fullName = "\(firstName) \(lastName)" :error
    // we can change the type of variable to var and write a function inside it that contains a first and last name
    var fullName: String {
        "\(firstName) \(lastName)"
    }
//    we can also do like below :
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    }
}

let myName = Person2(firstName: "Pujz", lastName: "Fuz")
myName.fullName
