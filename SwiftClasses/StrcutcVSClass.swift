//
//  StrcutcVSClass.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 17/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class StrcutcVSClass: NSObject {

    
    
}


class Student {
    var fName : String
    var lName : String
    var age : Int
    var address : String
    init(fn:String, ln:String, ag:Int, add:String) {
        self.fName = fn
        self.lName = ln
        self.age = ag
        self.address = add
    }
    func changeMylocalVariable() {
        self.fName = "Dinesh"
    }
}

struct Employee {
    
    var fName : String
    var lName : String
    var age : Int
    var address : String
    
    //mutating
    
    mutating func changeMyLocalVar()  {
        self.fName = "Hi"
    }
    
}
