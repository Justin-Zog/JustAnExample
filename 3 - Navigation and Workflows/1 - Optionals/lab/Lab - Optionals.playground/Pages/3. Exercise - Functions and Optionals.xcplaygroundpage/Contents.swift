/*:
 ## Exercise - Functions and Optionals
 
 If an app asks for a user's age, it may be because the app requires a user to be over a certain age to use some of the services it provides. Write a function called `checkAge` that takes one parameter of type `String`. The function should try to convert this parameter into an `Int` value and then check if the user is over 18 years old. If he/she is old enough, print "Welcome!", otherwise print "Sorry, but you aren't old enough to use our app." If the `String` parameter cannot be converted into an `Int` value, print "Sorry, something went wrong. Can you please re-enter your age?" Call the function and pass in `userInputAge` below as the single parameter. Then call the function and pass in a string that can be converted to an integer.
 */
let userInputAge: String = "34e"



func checkAge(userAge: String) -> Int? {
    
    if let userInputAgeInt: Int = Int(userInputAge) {

        if userInputAgeInt > 17 {

            print("Welcome!")

        } else if userInputAgeInt < 18 {

            print("Sorry, but you aren't old enough to use our app.")

        }

        return userInputAgeInt
        
    }
    
    print("Sorry, something went wrong. Can you please re-enter your age?")
    
    return nil
    
}
/*:
 Go back and update your function to return the age as an integer. Will your function always return a value? Make sure your return type accurately reflects this. Call the function and print the return value.
 */
checkAge(userAge: userInputAge)

/*:
 Imagine you are creating an app for making purchases. Write a function that will take the name of an item for purchase and will return the cost of that item. In the body of the function, check to see if the item is in stock by accessing it in the dictionary `stock`. If it is, return the price of the item by accessing it in the dictionary `prices`. If the item is out of stock, return `nil`. Call the function and pass in a `String` that exists in the dictionaries below. Print the return value.
 */
var prices = ["Chips": 2.99, "Donuts": 1.89, "Juice": 3.99, "Apple": 0.50, "Banana": 0.25, "Broccoli": 0.99]
var stock = ["Chips": 4, "Donuts": 0, "Juice": 12, "Apple": 6, "Banana": 6, "Broccoli": 3]

// It is a func so you will have to call it!!!

func checkOut(itemName: String) -> Double? {
    
    if let tempStock = stock[itemName] {
        
        if tempStock > 0 {
            return prices[itemName]
        } else {
            return nil
        }
    
    } else {
        return nil
    }
}

print(checkOut(itemName: "Donuts"))

print(checkOut(itemName: "Chips"))


//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Food Functions](@next)
