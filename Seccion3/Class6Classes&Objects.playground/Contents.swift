//: Playground - noun: a place where people can play

import UIKit

class Ghost {  //we begin classes with a capital letter
    
    var isAlive = true //attributes
    
    var strength = 9   //attributes
    
    func kill() {              //method
        isAlive = false
    }
    
    func isStrong() -> Bool {  //this method is going to retunr a boolean  therefore we use ->Bool
        
        if strength > 10 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
}

var ghost = Ghost()  //a new object

print (ghost.isAlive)   //print attribute isAlive

ghost.strength = 20     //changed attribute strength

print (ghost.strength)

ghost.kill()  //use method kill

print (ghost.isAlive)  //now ghost is dead

print (ghost.isStrong()) //method isStrong


