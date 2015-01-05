// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";

var name = "Wilbert";

// Variables
let x = 1;
//cannot assign anymore values to x since let = CONSTANT

var y = 1;
y = 2;
//use LET all the time unless you want your variable to be changed


//---------------------//---------------------//---------------------

// Type Inference
// string, int, double, float --> common types
let i:Int = 2;

let d:Double = 2.5;

let s:String = "Ito ay tali";

var b:Bool = true;

//---------------------//---------------------//---------------------

// Operators
x + y;
x - y;
x * y;
x / y;
x % y;
y++;
--y;

//---------------------//---------------------//---------------------

// Control Flow
let condition = false;

if (condition == true) {
    println("I am true");
}
else {
    println("I am false");
}

//---------------------//---------------------//---------------------

// Collections/Data Structures
var shopping_list = ["milo", "bearbrand", "water", "shampoo", "soap"];

shopping_list[2];
shopping_list[0];
shopping_list[1...3];

shopping_list.insert("Milk", atIndex: 2);
shopping_list.removeAtIndex(0);
shopping_list[0];
shopping_list[1];

//---------------------//---------------------//---------------------

// Iterating
for elem in shopping_list {
    println(elem);
}

//---------------------//---------------------//---------------------

// Dictionaries
var pets = ["Dog":"Aso", "Cat":"Pusa", "Mouse":"Daga"];

pets["Dog"];
pets["Cat"];

//---------------------//---------------------//---------------------
// Clsases
class Animal {
    let name:String
    let type:String
    
    init(name:String, type:String) {
        self.name = name;
        self.type = type;
    }
    
    func talk() {
        println("My name is \(name) and I am a talking \(type).")
    }
}

let example = Animal(name: "Mr. Dog", type: "Shi Tzu");
example.talk();













