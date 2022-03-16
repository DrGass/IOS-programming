//
//  main.swift
//  tuples
//
//  Created by Użytkownik Gość on 16/03/2022.
//  Copyright © 2022 Użytkownik Gość. All rights reserved.

import Foundation

func separateStrings(string : String) -> [Character]{
    var charArr: [Character] = Array(string)
    return charArr
}

func IdentifyString(array : [Character]) -> [Variables]{
    var variableArray = [Variables]()
    for i in array{
        switch i {
        case "0","1","2","3","4","5","6","7","8","9":
            
            variableArray.append(Variables.digit)
        case "+","-","/","*":
            variableArray.append(Variables.operatorx)
        default:
            variableArray.append(Variables.letter)
            
            
        }
    }
    return variableArray
}

enum Variables{
    case digit
    case operatorx
    case letter
}

let testString : String = "15+4+val"
let testArray : [Character] = separateStrings(string: testString)
let identifyArray : [Variables] = IdentifyString(array: testArray)
//print(testArray)
for i in identifyArray{
    print(i)
}

