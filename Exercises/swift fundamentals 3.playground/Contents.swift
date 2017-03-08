//: Playground - noun: a place where people can play

import UIKit

//Write a program that adds the numbers 1-255 to an array

var array = [Int]()

for i in 1...255 {
    array.append(i)
}


//swap two random values in the array

var length = array.count

var randNumberOne = Int(arc4random_uniform(UInt32(length)))
var randNumberTwo = Int(arc4random_uniform(UInt32(length)))

if randNumberOne != randNumberTwo {
    swap(&array[randNumberOne], &array[randNumberTwo])
}

//Write the code that swaps random values 100 times (You created a "shuffle!")

for i in 1...100 {
    var randNumberOne = Int(arc4random_uniform(UInt32(length)))
    var randNumberTwo = Int(arc4random_uniform(UInt32(length)))
    
    if randNumberOne != randNumberTwo {
        swap(&array[randNumberOne], &array[randNumberTwo])
    }
}

//Remove the value "42" from the array and print "We found the answer to the Ultimate Question of Life, the universe, and Everything at index __" and print the index of where "42" was before you removed it

for i in 0..<array.count {
    if(array[i] == 45){
        array.remove(at: i)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        break
    }
}