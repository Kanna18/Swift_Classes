//
//  ViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 15/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeMyBGColor()
//        _ = concatenatingName(firstName: "Bharath", secondName: "Reddy")
//        concatenatingName(withFirstName: "Bharath", andLastName: "Reddy")
//        concate(names: 1,2,3,4,5)
        
//        var myDict = [1:"Dinesh", 2:"Bharath", 3:"Kumar"]
//        myDict[4] = "Sankar"
//        print(myDict)
        
        var vals  = [1,2,3,4]
        var names  = ["Dinesh","Bharath","Kumar","Sankar"]
        var myDict = Dictionary.init(uniqueKeysWithValues: zip(vals, names))
        print(myDict)
        
        for key in myDict.values{
            print(key)
        }


//        Arrays
//        Dictionary
        
//
////        var myDict : NSMutableDictionary = [1:"Dinesh", 2:"Bharath", 3:"Kumar"]
////        myDict.setValue(<#T##value: Any?##Any?#>, forKey: <#T##String#>)
//
//
//
////        NSDictionary,
////        NSMutableDictionary
////        Dictionary
//
//        let p2 = Person.init()
//        p2.firstName = "Dinesh"
//        p2.secondName = "Kumar"
//
////        _ = 2 * p2.age!
//
//
////        if let myAge = p2.age{
////
////            print(myAge * 100)
////        }else{
////            print("Age Not given")
////        }
//
//
        
//        var p3 = Person()
//        p3.firstName = "iOS"
//        p3.secondName = "Developer"
//        p3.ageUnwrap = 20
//        p3.myCalc()
//
//        if let a = p3.ageOptional {
//            let finalAge = a * 10
//            print(finalAge)
//        }else{
//            print("Age is not provided")
//        }fName: <#String#>
//
//
//
//        let fAge = p3.ageUnwrap * 10
//
//        print(fAge)
        
//        var p = Person.init()
//        var p = Person()
        
//        let p4 = Person().myCalc()
        

        
        
    }
    
    func changeMyBGColor() {
        self.view.backgroundColor = UIColor.cyan
    }
    
    func concatenatingName(withFirstName a:String, andLastName b:String) -> String {
        let fullName = a + b
        return fullName
    }
    
    func concate(names:Int...) {
        print(names)
        
        
    }
    
}



//Arrays
//Dictionaries
//Classes
//Optionals
//Optional Binding
//Unwrapping

