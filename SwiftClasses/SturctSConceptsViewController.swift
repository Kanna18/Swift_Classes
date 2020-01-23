//
//  SturctSConceptsViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 17/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class SturctSConceptsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let addr = """
        Ameerpet
        Hyderabad
        """
        
        //classes are reference types
        var student1 =  Student(fn: "ioS", ln: "Studen", ag:20 , add:addr)
        var student2 = student1
        student2.fName = "iphone"
        student2.changeMylocalVariable()
        print(student1.fName, student2.fName)
        
        //Struct are Value types
        var emp1 = Employee(fName: "ioS", lName: "Studen", age:20 , address:addr)
        var emp2 = emp1
        emp2.fName = "Dinesh"
        emp2.changeMyLocalVar()
        print(emp1.fName, emp2.fName)
        
        
        //Closures
//        let filArr = filterNumbers(numbers: [10,20,30,40,50,60])
        
        let filArr = filTerNumberWithPredicate(closure: { (myNum) -> Bool in
            return myNum < 30
        }, numbers: [10,20,30,40,50,60])
        
        
//        let filArr = filTerNumberWithPredicate(closure: greaterThanTen(num:), numbers: [10,20,30,40,50,60])
        print(filArr)
        

        
        var numb = 5
        
        
        
    }
    
    func greaterThanTen(num:Int) -> Bool {
        return num % 3 == 0;
        
    }
    
    
    func filTerNumberWithPredicate(closure:(Int)->Bool, numbers:[Int]) -> [Int]{
        var fArr = [Int]()
        
        for nu in numbers {
            if closure(nu){
                fArr.append(nu)
            }
        }
        return fArr
    }
    

}

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect  {
    
    
    var origin = Point()
    var size = Size()
}



