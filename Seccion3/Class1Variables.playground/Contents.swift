//: Playground - noun: a place where people can play

import UIKit

//var and let

var str = "Hello, playground"      //Var can changed

str="Hi, Everyone"

let otherStr="Hi, Dan"   //otherStr cannot be changed    // let is a variable const

//String

let name = "Dan"

print("Hello"+name)

//integer (whole number)

var myInt = 8     //myInt can take a type of varable automatically

print(myInt*2)

print(myInt+100)

myInt=myInt+1

myInt=myInt/5

print("myInt has value \(myInt)")   //First Form

print("myInt has value", myInt,":3")  //Second Form

print(myInt)

let age = 20

print("My name is \(name) and I am \(age) years old ")

//Doubles and Floats

var a: Double = 8.73

var b: Float = 8.73

var c = 7.12

print(a/c)

//print(a/b) can't combine two diferrent types

print(Double(myInt)+a) //Is necesary a Cast for combine two or more different types


//Boolean

let gameOver = false   //Boolean

var gameOverString = String(gameOver)  //Cast of Boolean for be String

//double - 5.76, int - 8, print The product of 5.76 and 8 is ... 

var x :Double = 7.76

var y :Int = 8

print(a-x)

print(myInt-y)

print("The product of \(x) and \(y) is \(x*Double(y))")







