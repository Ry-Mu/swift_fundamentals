//: Playground - noun: a place where people can play

import UIKit

var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"

var width: Double = 5
var height: Double = 10.5
var area = width * height

height += 1
width += 1

area = width * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")

print("The maximum value \(Int.max)")
print("The minimum value \(Int.min)")

print("The maximum value \(Int32.max)")
print("The minimum value \(Int32.min)")

print("The maximum value \(UInt32.max)")
print("The minimum value \(UInt32.min)")

var myInt32: Int32 = 3
var myNormalInt: Int
// This will not error, because we first convert Int32 to instance of Int Type
myNormalInt = Int(myInt32)

print("Addition \(1 + 3)")
print("Subtraction \(1 - 3)")
print("Multiplication \(1 * 3)")
print("Division \(1 / 3)")


// loop from 1 to 5 including 5
for i in 1...5 {
    print(i)
}
// loop from 1 to 5 excluding 5
for i in 1..<5 {
    print(i)
}

var start = 0
var end = 5
// loop from start to end including end
for i in start...end {
    print(i)
}
// loop from start to end excluding end
for i in start..<end {
    print(i)
}


var i = 1
while i < 6 {
    print(i)
    i += 1
}

var toDoList: [String] = ["Learn iOS", "Build the next Flappy Bird", "Make Bank"]
print(toDoList)

var newList: [String] = [String]()
newList.append("Master iOS")
newList.append("Make 3 cool apps")
newList.append("Work for Apple")
print(newList)

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


var newArrayOfInts = [1, 2, 3, 4, 5]
// => "[1, 2]"
print("\(newArrayOfInts[0...1])")
// => "[2, 3, 4]"
print("\(newArrayOfInts[1..<4])")
// => "[3, 4]"
print("\(newArrayOfInts[2...3])")


var arr = [1, 2, 3, 4]
arr[0] = 8
print(arr)      // The array has now changed!


var nums = [1, 2, 3, 4]
nums.append(7)
print(nums)

var remArrayOfInts = [1, 2, 3, 4, 5]
var popped = remArrayOfInts.remove(at: 0)
print(popped)
print(remArrayOfInts)

var insArrayOfInts = [1, 2, 3, 4, 5]
insArrayOfInts.insert(6, at: 5)

var ninsArrayOfInts = [1, 2, 3, 4, 5]
ninsArrayOfInts.insert(6, at: ninsArrayOfInts.count)

var starters = ["Fisher", "Kobe", "Gasol", "Bynum", "World Peace"]
for starter in starters {
    print(starter)
}

for i in 0..<starters.count {
    print(starters[i])
}


