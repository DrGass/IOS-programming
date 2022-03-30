//
//  main.swift
//  classes
//
//  Created by Użytkownik Gość on 30/03/2022.
//  Copyright © 2022 Użytkownik Gość. All rights reserved.
//

import Foundation

class Field{
    var name : String = "unknown"
    
    init (name : String){
        self.name = name
    }
}

class TextField : Field{
    var text : String = "unknown"
    
    init(name : String, text : String){
        self.text = text
        super.init(name: name)
    }
    
}

class ZipCodeField : Field{
    var code : String
    init(name : String, code : String) {
        self.code = code
        super.init(name: name)
    }
    
    func printZip(){
        print("name = \(name), zipcode= \(code)")
    }
}

var arrayOfAnyInstance = [Any]()

arrayOfAnyInstance.append(TextField(name: "Bartek",
                                    text: "Ukryty"))
arrayOfAnyInstance.append(ZipCodeField(name:"Skc",
                                       code: "96-100"))

var currentInstance = arrayOfAnyInstance[1]
var t = currentInstance as? ZipCodeField

if let e = t{
    print("This is zipcode")
        e.printZip()
    }
else{
    print("This isn't zipcode")
    
}
