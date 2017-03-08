//: Playground - noun: a place where people can play

import UIKit

//  Structs in Swift
//Structs in Swift are used to create types that hold a collection of values. At first glance Structs may look very similar to classes but there are a couple key differences that we'll be going over in the coming chapters.

//Structs, like classes, are used to create types. Generally, Structs are used more for creating collections of values. For example representing shapes is a great use for structs! Let's see this in action:

struct oldRectangle {
    var width = 10
    var height = 20
}
var myRectangle = oldRectangle()           // Taking advantage of type inference
print("\(myRectangle.width)")


// Here we declare the Rectangle struct that has two stored properties: width and height that each has default values of 10 and 20 respectively. We instantiate the rectangle using the same syntax as with Classes.

//  Struct Methods
//Methods in Structs are very similar to methods in classes. Let's revisit our rectangle example.

struct nextRectangle {
    var width = 10
    var height = 20
    func printDesc() {
        print("I have a width of \(width) and a height of \(height)")
    }
    mutating func doubleWidth() {                // Why do we need the mutating keyword here?
        width *= 2
    }
}


//We implemented two methods in Rectangle. The first method, printDesc does not have to be prefixed with the mutating keyword because the method is not changing the value of the instance in any way. However, our second method, doubleWidth, changes the value of one of its properties. Since the value is changing we have to prefix the method with the mutating keyword.

//Interestingly enough, we do NOT need the mutating keyword when writing a similar method in a Class. This has to do with value types vs reference types which we will go over soon.

//  Struct Initialization
//Similar to Classes, with Structs, we need to initialize our properties when instantiating the class if they are not given default values. Fortunately, Swift will give us a "memberwise" initializer so that we don't have to explicitly define the initialization method. This memberwise initializer will include external parameter names for all of the stored properties that need values. Let's see this in action.

struct otherRectangle {
    var width = 200
    var height = 400
}
let orectangle = otherRectangle()

//In the above implementation of the Rectangle Struct, we used the free "empty" initializer provided to us by the Swift compiler. We are given a  free "empty" initializer for our Types if we give all of our stored properties default values and do not define our own custom initializer.

struct Rectangle {
    var width: Int
    var height: Int
}
let rectangle = Rectangle(width: 200, height: 400)


