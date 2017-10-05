//: Playground - noun: a place where people can play

import UIKit

var str = "Hola" //declaracion 

var newString = str + " Dan!"  //concatenar

for Character in newString.characters{
    print(Character)  //imprimir caracter por caracter
}


let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5) //mostar los primeros 5 caracteres

newTypeString.substring(from: 4) //mostrar a partir del 4 caracter

NSString(string: newTypeString.substring(from: 6)).substring(to: 3) //Recortar a partir de un caracter

if newTypeString.contains("Dan"){
    print("newTypeString Dan")
}

newTypeString.components(separatedBy: " ") //separar por espacios

newTypeString.uppercased  //mayusculas

newTypeString.lowercased  //minusculas



