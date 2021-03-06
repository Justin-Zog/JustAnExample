/*:
 ## Exercise - Memberwise and Custom Initializers
 
 If you completed the exercise Structs, Instances, and Default Values, you created a `GPS` struct with default values for properties of `latitude` and `longitude`. Create your `GPS` struct again, but this time do not provide default values. Both properties should be of type `Double`.
 */
struct GPS {
    var latitude: Double
    var longitude: Double
}

/*:
 Now create a constant instance of `GPS` called `somePlace`, and use the memberwise initializer to set `latitude` to 51.514004, and `longitude` to 0.125226. Print the values of `somePlace`'s properties.
 */
let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)

print(somePlace)
/*:
 In Structs, Instance, and Default Values, you also created a `Book` struct. Creat this struct again without default values. Give each property appropriate types. Declare your `favoriteBook` instance and pass in the values of your favorite book using the memberwise initializer. Print a statement about your favorite book using `favoriteBook`'s properties.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

var favoriteBook = Book(title: "Legend", author: "Marie Lu", pages: 305, price: 11.06)

print(favoriteBook)
/*:
 Make a `Height` struct with two variable properties, `heightInInches` and `heightInCentimeters`. Both should be of type `Double`.
 
 Create two custom initializers. One initializer will take a `Double` argument that represents height in inches. The other initializer will take a `Double` argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: *1 inch = 2.54 centimeters*.
 
 - Example: If you use the initializer for inches to pass in a height of 65, the initializer should set `heightInInches` to 65 and `heightInCentimeters` to 165.1.
 */
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInCentimeters = (heightInInches * 2.54)
        self.heightInInches = heightInInches
    }
    
    init(heightInCentimeters: Double) {
        self.heightInInches = (heightInCentimeters / 2.54)
        self.heightInCentimeters = heightInCentimeters
    }
}

var justinHeight = Height(heightInCentimeters: 188)
print(justinHeight)

/*:
 Now create a variable instance of `Height` called `someonesHeight`. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.
 */
var someonesHeight = Height(heightInInches: 65)

print(someonesHeight)

/*:
 Now create a variable instance of `Height` called `myHeight` and initialize it with your own height. Verify that both `heightInInches` and `heightInCentimeters` are accurate.
 */
var myHeight = Height(heightInInches: 74)

print(myHeight)

//: [Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Users and Distance](@next)

//struct Friend {
//    var name: String
//    var age: Int
//}

//var petey = Friend(name: "Petey", age: 28)
//var andrea = petey

//print(petey.name == andrea.name)

//andrea.name = "Andrea"

//print(andrea)

//print(petey.name == andrea.name)



class Friend {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class BestFriend: Friend {
    let nickname: String
    
    init(name: String, nickname: String) {
        self.nickname = nickname
        super.init(name: name)
    }
}

class Acquaintance: Friend {
    let howIKnowThem: String
    
    init(name: String, howIKnowThem: String) {
        self.howIKnowThem = howIKnowThem
        super.init(name: name)
    }
}

class WorstEnemy: Friend {
    let planOfRevenge: String
    
    init(name: String, planOfRevenge: String) {
        self.planOfRevenge = planOfRevenge
        super.init(name: name)
    }
}




let cup1 = Cup()

let cup2 = cup1

cup1.label = "something"

cup2.label = "something else"

print(cup1.label)

"something else"
