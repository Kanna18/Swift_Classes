//
//  ExtenstionsViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 23/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class ExtenstionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = "Dinesh"
        let myArray = [1,2,3,4,5,6,7,8,9,10]
        let soretedArra = myArray.sorted { (a, b) -> Bool in
            return a > b
        }
         
        let filTerArray = myArray.filter { (xyz) -> Bool in
            return xyz % 3 == 0
        }
        
        let fArr = myArray.filter({ $0 % 3 == 0 })
        print(fArr)
                    
        let jsonArray = [["fName":"a",
        "lastName":"b",
        "age":10],
        
        ["fName":"c",
        "lastName":"d",
        "age":20],
        
        ["fName":"e",
        "lastName":"f",
        "age":30],
        
        ["fName":"g",
        "lastName":"h",
        "age":10]]
        
        let ageTen = jsonArray.filter { (myDict) -> Bool in
            let age = myDict["age"] as! Int
            return age == 10
        }
        print(ageTen)
        
        
        let ageTEN = jsonArray.filter({ $0["age"] as! Int == 20 })
        print(ageTEN)
        
        var myName = "Disnssesh".countOfS
        print(myName)
        
        
        var numb = 45.printTable()
    }
    
}

extension String{
    var countOfS : Int {
        var cou = 0;
        for char in self {
            if(char == "s"){
                cou += 1
            }
        }

        return cou
    }


}

extension Double {
    var mts: Double {
        return self * 1_000.0
    }

    
}


extension Int{
    
    var multiPly : Int {
        return self * self
    }
    
    
    func table(task: () -> Void) {
        for _ in 0..<10 {

        }
    }

    func printTable() -> String {
        for i in 1...10 {
            print("\(self) * \(i) = \(self * i) ")
        }
        
        return "hi"
    }
    func multiples() -> [Int] {
           
           return []
       }
    
}

extension Person{
    
}
