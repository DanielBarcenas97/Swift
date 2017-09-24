//: Playground - noun: a place where people can play

import UIKit

// Array 

var array=[36,35,5,2,7]

print(array)

print(array[0])  //print position 0, this position contains a 36

print(array.count)  //count the number of elements

array.append(55)    // add 55 to my array in the final position

array.remove(at: 1 )  //remove position 1, this position contains a number 35

array.sort()         //order my array from minor to major

print(array)

//Challenge 3.78, 7.1, 8.9 remove 7.1 Append 3.878 * 8.9


var array2 = [3.78,7.1,8.9]  //array with numbers float

array2.remove(at: 1)


array2.append(array2[0] * array2[1]) //add (3.78 * 8.9) to my array in the final position

print(array2)



let mixArray = ["Rob" , 35 , true] as [Any]  //Mix Array with different variables

print(mixArray)

let stringArray = [String]()  //New Array of String Empty



//Dictionary

var dictionary = ["computer": "Something to play Call of Duty", "coffe" : "The best drink ever "] //This is a Diccionary

print(dictionary["computer"] as Any) //cast explicit for string

print(dictionary["computer"]!) // as ! we avoided a warning

print(dictionary.count) //print to number of elements of dictionary

dictionary["mac"] = "Best computers" //add to my dicctionary in firt position

dictionary["pen"] = "Old fashioned writing implement" //add to my dicctionary in second position

print(dictionary)

dictionary.removeValue(forKey: "computer")  //remove element of dictionary with your forkey

print(dictionary)

var gameCharacters = [String:Decimal]()  //Dictionary Empty

gameCharacters["ghost"]=8.7   //add to my dictionary called gameCharacters


//Challenge Menu pizza (10.99), ice cream (4.99), salad (7.99) // print "The total coast of my meal is xxx"


let menu=["pizza": 10.99, "ice scream":4.99, "salad":7.99]

print("The toyal coast of my meal is \(menu["pizza"]! + menu["ice scream"]! + menu["salad"]!)")







