//: Playground - noun: a place where people can play

import UIKit

// Arrays
//We often have to combine related values into a collection. Swift provides us with two Collection types: Array and Dictionary. First, we will go over the Array.  Arrays are an ordered collection of values. On the other hand, Dictionaries are an unordered collection of key-value pairs. Let's first go over Arrays. Each position is defined with an index starting at 0. It's a lot easier to explain with examples.

//We will declare a variable  toDoList to be of an instance of the Array Type which will hold onto an ordered collection of instances of the String Type. The [] brackets denote the Array type and inside of the brackets we place the type of the values that we'll be storing.


var toDoList: [String] = ["Learn iOS", "Build the next Flappy Bird", "Retire in Cancun"]

//Here we are declaring the toDoList and giving it some values to begin with. What if we wanted to start with no tasks and then gradually add them on? We would have to initialize an empty array like so:

var newToDoList: [String] = [String]()              // Setting the array type and initializing the array
newToDoList.append("Learn iOS")
newToDoList.append("Build the next Flappy Bird")
newToDoList.append("Retire in Cancun")
print(newToDoList)

var newerToDoList = [String]()              // Setting the array type and initializing the array
newerToDoList.append("Learn iOS")
newerToDoList.append("Build the next Flappy Bird")
newerToDoList.append("Retire in Cancun")
print(newerToDoList)

// Just like how we could not assign an  Int to a variable or a constant that was declared to hold a different Type, if we try to append an instance of a Type that is not a String, Swift will throw us an error.

//  Accessing Arrays

//Arrays are zero indexed. What this means is the first instance inside of an  Array lives at index 0. The second instance inside of an Array lives at index 1.

var arrayOfInts = [1, 2, 3, 4, 5]      // Note that we let Swift infer the type here
// The first number lives at index 0.
print("\(arrayOfInts[0])")
// The second number lives at index 1.
print("\(arrayOfInts[1])")
// The third number lives at index 2.
print("\(arrayOfInts[2])")
// The fourth number lives at index 3.
print("\(arrayOfInts[3])")
// The fifth number lives at index 4.
print("\(arrayOfInts[4])")


//We used ranges in our  for-in loops. Ranges can be used to index instances of the Array Type as well.

var newarrayOfInts = [1, 2, 3, 4, 5]
// => "[1, 2]"
print("\(newarrayOfInts[0...1])")
// => "[2, 3, 4]"
print("\(newarrayOfInts[1..<4])")
// => "[3, 4]"
print("\(newarrayOfInts[2...3])")


