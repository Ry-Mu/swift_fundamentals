//: Playground - noun: a place where people can play

import UIKit



// Dictionaries

//An  Array Type is useful for a collection of ordered instances, but a Dictionary Type is more suitable for unordered instances. When we want to look for a definition, or value of a particular word in a dictionary, we look up the word in the dictionary and read its definition. A Dictionary Type is a collection type that organizes its content by key-value pairs. A key maps to a value just like a word in a dictionary maps to a definition.

//  Initializing a Dictionary

// Here we are declaring myDict variable to be of Dictionary Type that will use instances of String as
// its keys and instances of Int as its values
var myDict1: [String: Int]

//Once again, if we just declare a variable or a constant to be of the  Dictionary Type, we will get an error when we try to do something with it because we have not initialized it yet.

var myDict2: [String: Int] = [String: Int]() //note the empty dictionary to the right

//Of course, we can use Swift's type inference:

var myDict3 = [String: Int]()

//We can declare, initialize and set the values of the Dictionary in one line:

//// here we are declaring myDict variable to be of Dictionary Type that will use instances of String as
// its keys and instances of Int as its values
var dictionary = [
    "Kobe" : 24,
    "Lebron": 23,
    "Rondo" : 9
]
// Note how we are leveraging Swift's type inference here


//  Accessing a Dictionary
//We can access  Dictionaries just like how we accessed Arrays. We just have to provide the key in-between brackets. However unlike Arrays where the keys are instances of Ints and are zero-index based, Dictionary keys can really be anything and are not particularly ordered. We can access Kobe's number this way from the previous dictionary that we created:

dictionary["Kobe"]

//On the Playground's right pane, it will say that the value is 24 but don't be fooled.  When we access a Dictionary we get back an Optional Type. This makes sense because there is a chance that a key doesn't exist in the dictionary. For example, the word 'gullible' might not exist in the Dictionary, therefore, it makes sense that when you access a Dictionary, Swift will warn us that it might be nil by returning an Optional. We can see this safety net in action when we try to store the result of the access to a separate variable:

var jerseyNumber = dictionary["Kobe"]
print(jerseyNumber)

//We can be very bold and just unwrap it:

var jerseyNumber1 = dictionary["Kobe"]!  //explanation point at the end
print(jerseyNumber1)

//But it is better practice to use  Optional Binding:

if let jerseyNumber2 = dictionary["Kobe"] {  //using if let instead of car.
    print(jerseyNumber2)
}


//  Modifying a Dictionary
//We can modify a Dictionary in a similar way we did with Arrays.

var dictionary2 = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]

print(dictionary)
dictionary["Fisher"] = 2
print(dictionary)
dictionary["Kobe"] = 24
print(dictionary)

//If the  key exists, we update the value of what is on the right-hand side of the equals sign. If the key doesn't exist, we add a new key to the dictionary along with the value we provided on the right of the equals sign.

//  Removing
//We can remove a  key-value pair by accessing the key and giving it the value of nil:

print(dictionary)
dictionary["Lebron"] = nil
print(dictionary)

//Or we can send the message  removeValue.

//  print(dictionary2)
//  var lebronsNumber = dictionary2.removeValue(forKey: "Lebron") //K in forKey is capital
//  print(lebronsNumber)

//It is important to note that  this message returns an Optional Type that might contain the value of the key-value pair that was deleted. Once again it makes sense that this method returns an Optional Type because the key specified by the user might not be present in the dictionary. We can unwrap it with Optional Binding:

if let lebronsNumber = dictionary2.removeValue(forKey: "Lebron") {
    print(lebronsNumber)
}


//  Looping
//We can use the  for-in loop to loop through the keys and the values of Dictionaries.

for (key, value) in dictionary {
    print("The key is \(key) and the value is \(value)")
}

//The ( key, value) is of the Tuple type. Read more about Tuples in the Tuples section in  The Basics.

for x in dictionary {
    print(x)
}

//If we don't provide the ( key, value) then Swift will print out a tuple for each key-value pair. Tuples ARE (key, value) pairs