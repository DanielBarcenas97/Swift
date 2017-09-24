//: Playground - noun: a place where people can play

import UIKit

let age = 18

//Greater than or equal to 18

if age >= 18 {
    
    print("You can play !")
    
} else {
    print("you're too young")
}


//Check Username

let name="Dan"

if name == "Dan" {  // If name is equal with "Dan" then print("Hi Dan You can Play")
    print("Hi " + name + "! You can Play")

}else{
    print("Sorry"+name+"!You can't play Bye")
}

//2 If Statements With And

if name == "Dan" && age>=18 {   // && is And
    print("Welcome " + name)
} else if name == "Dan" {
    print("Sorry Dan, you need to get older")

}

//2 If Statements With Or

if name == "Dan" || name == "Daniel"{ // || is Or
    print("Welcome Sr " + name)
}

// Booleans With If Statements

let isMale = true

if isMale {
    print("You're male !")

}
//Login system. Username/Password variable.
//1.They are Correct
//2.They are both Wrong
//3.Username is Wrong
//4.Password is Wrong

let user = "Phantom"
let password = "proteco123"

if user == "Phantom" && password == "proteco123"{  //They are Correct
    print("Welcome! Sr " + user )
    
}else if user != "Phantom" && password != "proteco123" { //They are both Wrong
    print("They are Both wrong")
    
}else if user == "Phantom" && password != "proteco123" { //Username is Wrong
    print("Password is Wrong")
    
}else if user != "Phantom" && password == "proteco123" { //Password is Wrong
    print("Username is Wrong")
}

















