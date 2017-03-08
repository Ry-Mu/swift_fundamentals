//: Playground - noun: a place where people can play

import UIKit

func hello(name n: String, age a: Int) {
    print("hello \(n), your age is: \(a)")
}

hello(name: "Joe Blow", age: 30)


func showAge(age: inout Int) -> Int {
    var age = age  //default is a constant, need to declare var
    age += 10
    print("new age is \(age)")
    return age
}

var age = 20

showAge(age: &age)

print(age)

class Human {
    var name: String?
    var age : Int?
    
    init(n: String, a: Int)
    self.name = n
    self.age = a
}

var human = Human(n: "Joe")
