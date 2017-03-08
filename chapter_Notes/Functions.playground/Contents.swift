//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Functions

//A function is a name that is related to a block of code we can execute. To execute this code, we invoke it. A function is invoked when we call its name, pass along the necessary input, and it will give us back some kind of output (most). Some functions take no input and some functions have no output. Even though a function doesn't return anything, it can do something inside the block of code that alters a program. For example:

func sayHello() {
    print("Hello how are you doing today?")
}

//Here we defined a function with a func keyword and declared its name to be sayHello, and specified that this function does not take in any arguments. When this function is invoked, it will print a greeting to the screen but it will not return anything.

sayHello()

//We can invoke this function by calling its name and passing in the necessary input. In this case, the function requires no input so we won't pass anything in. This function doesn't return anything, but it will have a side effect of printing something to the Assistant Editor.

//      Function Parameters
// We define what kind of input we want by declaring parameters. Let's declare a parameter named 'name' that will be of the String Type. Our function will still not return anything but its side effect will be a little bit more personalized. Note that we need to not only declare a parameter name but also give the parameter a specific type.

func sayHello(name: String) {
    print("Hello, \(name), how are you doing today?")
}

//We can invoke this function by calling its name and passing in our arguments for each of its parameters.

sayHello(name: "Andrew")

//Wait, what's the difference between a parameter and an argument? These two words get mixed up a lot in programming. In this example, 'name' is a parameter while "Andrew" is an argument. We define parameters. We pass in arguments into functions.


//Parameter Names
//Sometimes having an external parameter name helps make our functions more expressive. We can give external parameter names so that when we use the function there's a higher chance that we pass in the right arguments:

// The two parameters have external names of width and height
// and internal names of w and h
func printDescription(width w: Int, height h: Int) {
    print("My width is \(w) and my height is \(h)")
}
// The func can be invoked by calling its name and passing in
// right arguments with corresponding external parameter names.
printDescription(width: 10, height: 20)

//However, it is more Swift-like to leave out the external parameter name for the first argument and instead have the function name describe what the first parameter should be. This convention is used a lot in Swift and is highly recommended in your own code.

func printDescriptionWithWidth(w: Int, andHeight h: Int) {
    print("My width is \(w) and my height is \(h)")
}
printDescriptionWithWidth(w: 10, andHeight: 20)

//Constants v. Variables
//When we pass in an argument to a function, our function assigns the value to a constant with the name of the internal parameter name. This becomes clear when we try to modify the constant.

//var myInt = 1
//func changeMyInt(someInt: Int) {
    //someInt = someInt + 1           // This throws an error because we are trying to modify a constant.
   // print(someInt)
//}

//If we want to modify the argument we have to specify that we want to store it in a variable.

//var myInt = 1
//func changeMyInt(someInt : Int) {
//    var someInt = someInt + 1
//    print(someInt)
//}

//However when we are passing in an argument and modifying it, its changes will not reflect outside of the function call for value types. We will be going over value types vs. reference types in the next chapter. Strings, Arrays, Dictionaries, Bool, and Ints are Value  Types. Classes and functions are reference types. Here's a quick peek at what's coming ahead. When we have a function that changes a value of an Int, its changes will not persist outside of the function:

var myFirstInt = 1
func changeMyInt(someInt: Int) {
    var someInt = someInt
    someInt = someInt + 1
    print(someInt)
}
changeMyInt(someInt: myFirstInt)     // => 2
print(myFirstInt)                   // => 1

//If we want to be able to make changes within a function to a specific instance of a Value type we need in-out parameters.

    //In-out Parameters
//If we want to modify an argument and we want that change to appear on the outside of the function call, we need in-out parameters. There are two prerequisites to in-out parameters. First, we have to specify that our parameter is an in-out by following the parameter name with in-out. Next, when we invoke the function we have to pass in an argument with the '&' sign prefixed to it. Think of the '&' sign as passing the memory address of the particular constant or variable so that the function can go directly there and modify it so that the changes will persist outside of the function.

var myInt = 1
func changeMyInt(someInt: inout Int) {         // must specify "inout"
    someInt = someInt + 1
    print(someInt)
}
changeMyInt(someInt: &myInt)                            // must pass in the variable with "&" symbol
print(myInt)


//  Default Parameter Values
//It's good to have default parameter values sometimes. Let's revisit our sayHello function. If we don't know the name of the person that we are greeting we can have a default value to go with. For example, we can just say "Hey, buddy."


func sayHi(name: String = "buddy") {
    print("Hey \(name)")
}
// We can call it without providing any arguments and the default value will be used...
sayHi()
// ...or we can call it with an argument and that argument's value will be used
sayHi(name: "Yoda")

//  Return
//So far none of our functions had any tangible output. In many cases, we would want our function to return some sort of value that we can use later in our program. Let's modify our sayHello function and observe the differences:

//func sayHello(name: String = "buddy") -> String {
//    return "Hey \(name)"
//}
//var greeting: String?
//greeting = sayHello()
//print(greeting)

//This time, we are returning an instance of a String Type from our function. We have to specify in our function declaration that we are going to return an instance of a String Type. This is a binding contract, Swift will throw us an error when we construct our code in a way where an instance of a String Type might not return. Let's look at another example.

func calculateAreaOfRectangleWithWidth(w: Int, andHeight h: Int) -> Int {
    return w * h
}
var area = calculateAreaOfRectangleWithWidth(w: 10, andHeight: 3)
print(area)

//Here, our function has two parameters that will both be an instance of Int Type and our function promises to return an instance of an Int Type. If we want to return a value in some cases, we just have to specify that our function will return an Optional Type. For example:


// We are declaring a function named lookForSomethingIn and declaring two parameters.
// The first parameter will be an instance of Dictionary, with keys being instances of String
// and values being instances of Int.
// The first parameter has no external name but it has an internal name of dictionary.
// The second parameter will be an instance of a String.
// It has an external name of forKey and an internal name of key.
// This function promises to return an Optional Type that can either be nil or hold an instance of Int.
func lookForSomethingIn(dictionary: [String: Int], forKey key: String) -> Int? {
    if let value = dictionary[key] {
        return value
    } else {
        return nil
    }
}
//var jerseyNumber = lookForSomethingIn(dictionary: jerseyNumbers, forKey: "Kobe")
//if let num = jerseyNumber {
   // print(num)
//}

//  Scope
//Scope describes the visibility an instance or a function will have. Anything within a function's scope will be visible to that function. Every time we type {} we can think of it as creating a new inner scope within the current scope. The inner scopes will have access to the outer scopes while outer scopes do not have access to inner scopes.

//Function Types
//So what's a function's type? Let's look at the following function:
func findMinOf(arr: [Int]) -> Int? {
    if arr.count > 0 {
        var min = arr[0]
        for num in arr {
            if num < min {
                min = num
            }
        }
        return min
    } else {
        return nil
    }
}

//This function takes in one argument of an instance of Array that holds a collection of Ints and returns an Optional Type that may contain nil or contain a value of an instance of an Int. This function is an instance of ([Int]) -> Int? type. The function's parameters are listed on the left side of the parentheses and the return type comes after the ->.

//Let's look at another example. What type is this function?


//func callHello() {
//    print("Hello")
//}

//If we don't return anything we don't have to specify that we aren't returning anything in our function declaration. However, this function can be rewritten this way more explicitly

func callHello() -> () {
    print("Hello")
}
//This function is an instance of the Type of () -> (). There's a lot to learn with functions. If you want to learn more go to the  Functions documentation.

//side notes from documentation
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "Ryan"))

print(greet(person: "Anna"))
// Prints "Hello, Anna!"
print(greet(person: "Brian"))
// Prints "Hello, Brian!"


func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
// Prints "Hello again, Anna!"