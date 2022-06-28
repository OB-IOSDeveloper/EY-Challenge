//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

//Create a method that will take in string and return the same string without
//any spaces.  For example “EY is the best place to work.” would be returned as
//“EYisthebestplacetowork.”  Do this without the use of string methods like
//replacingOccurrences.  We want to see you manipulate the string directly.


import UIKit

let cadena = "EY is the best place to work"
func removeSpace(_ cadena:String) -> String {
    var result=""
    for character in cadena {
        if character != " " {
            result+=character.description
        }
    }
    return result
}
print(removeSpace(cadena))
