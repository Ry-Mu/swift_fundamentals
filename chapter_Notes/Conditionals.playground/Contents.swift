//: Playground - noun: a place where people can play

import UIKit

//  Conditionals
//We use conditionals to execute code based on a specific logical condition. For example, let's say we are having a party for NBA Legends. We only want to allow players with at least 5 rings. We could write the logic something like this:

// Declare a variable called rings that is of the Int Type.
var rings = 5
if rings >= 5 {
    print("You are welcome to join the party")
} else {
    print("Go win some more rings")
}


//If we have more than one condition we can add an else if statement:

var newRings = 5
if newRings >= 5 {
    print("You are welcome to join the party")
} else if newRings > 2 {
    print("Decent...but \(newRings) rings aren't enough")
} else {
    print("Go win some more rings")
}

//We used two comparison operators here. First, we checked if rings were greater than equal to 5. We also checked if rings were greater than 2. Here is a list of Swift's comparison operators:

//Common Operators
    //< Is the number on the left less than the number on the right?
    //> Is the number on the left greater than the number on the right?
    //<= Is the number on the left less than or equal to the number on the right?
    //>= Is the number on the left greater than or equal to the number on the right?
    // == is the number on the left equal to the number on the right?
    //!= is the number on the left not equal to the number on the right?    
    // === Is the instance on the left pointing to the same reference as the instance on the right?
    // !== Is the instance on the left not pointing to the same refernce as the instance on the right?


//  Equality vs. Identity
//There is a difference between equality and identity. For example == checks whether the instances on the left and the right are equal. Two instances can be equal, but they don't need to have the same location in memory. The last two operators are called identity operators. We will be going over the differences more in depth once we start creating our own Data Types.

//Logical Operators

    // && are two conditions BOTH true?
    // are either of the conditions true?
    // ! true becomes false, false becomes true

//We can use Logical Operators in our Conditionals as well. Let's say we want to change the criteria for entering our NBA Legends party. Let's say you have to have at least 5 rings AND have the name Kobe to enter the party:

var earnedRings = 5
let name = "Kobe"
if earnedRings >= 5 && name == "Kobe" {
    print("Welcome to the party \(name), congratulations on your \(earnedRings) rings")
}

//We can change our criteria and say that you have to have at least 5 rings or have at least 3 All-Star appearances.

var eRings = 5
var numOfAllStarAppearances = 17
if eRings >= 5 || numOfAllStarAppearances > 3 {
    print("Welcome you are truly a legend")
}

//Or we can just let in everyone who is not crazy.

var crazy = true
if !crazy {
    print("Let's party!")
}