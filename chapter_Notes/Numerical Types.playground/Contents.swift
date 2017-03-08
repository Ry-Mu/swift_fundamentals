//: Playground - noun: a place where people can play

import UIKit

//  Int
//There are unlimited numbers of numbers and a limited number of bits. There is a minimum and maximum value that an instance of an Int Type can represent. Int Type is signed in Swift. What this means is that it uses some of its possible representations to store negative numbers. Let's see what the maximum value and minimum value of the Int Type is in Swift:
print("The maximum value \(Int.max)")
print("The minimum value \(Int.min)")

//On OS X (the desktop operating system) allocates 64 bits to store an Int Type. On iOS, this is different because some devices store Int Types in 64 bits while older models such as the iPhone 5 utilize the 32-bit infrastructure. This seems like a big headache. Does that mean we have to write different code for different devices? If we use the instances of the Int Type, the compiler will determine the appropriate size for an Int when it builds your program.

//  Int32
//We can have an Int be stored in 32 bits by creating an instance of Int32 Type. It is important to note that Int and Int32 are different Types. Int32 is also signed. Let's see what the maximum and the minimum value of Int32 are.

print("The maximum value \(Int32.max)")
print("The minimum value \(Int32.min)")

//There's also similar Types available such as Int8, Int16, and Int64. We only use these specific integer types when we are doing something like cryptography where the way integers are stored is important. We will also run across these types when we are interacting with libraries built when storing 32 bits for an integer was very common. Most of the time you will simply use the Int type

//  UInt32
//We also have the unsigned integer counterparts as well. Once again we should only be using these specific Integer type when the nature of our program forces us to. We should use Int for all other cases and let the compiler decide how much memory to allocate when storing integers.

print("The maximum value \(UInt32.max)")
print("The minimum value \(UInt32.min)")

//Swift is Strongly Typed
//Int, Int32, UInt32 and all of the other variations of storing integers are all different types. What this means is that if we declare a constant or a variable to be of a specific Type, we can't assign a different type to it, even though they are just numbers.

var myInt32: Int32 = 3
var myNormalInt: Int = 2
//myInt32 = myNormalInt will not work -> cannot asign a value of type'Int' to a value of type 'Int32'
//We want to use Int consistently throughout our code so that we can leave the hard work to the compiler. We can convert other variations of the Int Type by using this syntax:


var myNewInt32: Int32 = 3
var myNewNormalInt: Int
// This will not error, because we first convert Int32 to instance of Int Type
myNewNormalInt = Int(myNewInt32)

//  Floating Point Numbers
//There is a finite number of bits a computer has to represent: an infinite amount of numbers. So how would a computer represent something like 1/3 which is .3333333 with 3's repeating until forever? A computer will try to do its best. The most important concept in this tab is the while Int's are precise, Floating Point Types are not.

//  Double vs. Float
//Swift has two Types to represent numbers with decimals. The first is the Double Type which allocates 64 bits to represent a floating point number and the second is the Float Type which allocates 32 bits to represent a floating point number. Since a Double Type has more representations available to it, it will store the floating point number more precisely. Rather than the Int Type where the bits represented how many Int's it can represent, the extra bits for floating point numbers just represent its precision.

//  Double Is the Inferred Type
//If we store a floating point number to a variable or a constant Swift will automatically assume that it is a Double. Just like how we want to use Int's in our code as much as possible, we want to avoid explicitly specifying "Float" whenever possible, so we can rely on Swift's type inference.

//  Operations
//We can perform basic operations in Swift such as addition, subtraction, multiplication, and division.

print("Addition \(1 + 3)")
print("Subtraction \(1 - 3)")
print("Multiplication \(1 * 3)")
print("Division \(1 / 3)")

//When we divide an instance of the Int Type with another instance of the Int Type, we get another new instance of the Int Type. Then what will happen if we divide 1 with 3? We would expect the result to be something like .33333333.  It results in zero because remember that Int's can only be whole numbers. If there are decimal points then there is a different Data Type for that. If we divide two Int's together and its result should be represented in a decimal, Swift will just round the number down(even if it's 8.9999).
