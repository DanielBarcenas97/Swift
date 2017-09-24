//: Playground - noun: a place where people can play

import UIKit

var i = 1

while i<=10 {
    print(i)
    i+=1  //add one in variable i
}


//Chagenge-display the first 20 numbers in the times table

i=7

while i <= 140{
    print(i)
    i+=7
}

//Chagenge-display the first 20 numbers in the times table

i=1

while i <= 20{
    print(i*7)
    i+=1
}


//Use a while loop to add one to each of the values in the array

i=0
var array = [7,23,98,1,0,763]

while i<array.count{  //with array.count we can get the total of elements
    //array[i]=array[i]+1
    array[i]+=1   //add one to each element of array
    i+=1  
}

