//: Playground - noun: a place where people can play

import UIKit

let array = [8,4,5,3,6]

for number in array{   //for each number in array
    print(number)      //8,4,5,3,6
}

//Create an array with 4 names of friend/family print "Hi there $% !"

let family = ["Alan","Galileo", "Erick", "Pao"]

for name in family{   //for each in array family
    print("Hi there \(name) !")
}

var numbers = [7,2,9,4,1]

for (index,value) in numbers.enumerated(){   //for each index and value in number.enumerated()
    numbers[index]+=1   //add one in each position value
}

print(numbers)

//array containing 8,7,19,28. Halve each of the values

var myArray = [Double]()  //myArray is empty

myArray = [8.0,7.0,19,28]   //add numbers in myArray

for (index,value) in myArray.enumerated(){
    myArray[index]=value/2  //in this action we can divide each value in two
}

print(myArray)

