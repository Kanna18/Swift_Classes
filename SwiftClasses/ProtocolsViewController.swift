//
//  ProtocolsViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 22/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class ProtocolsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let teacher = Teacher()
        teacher.lastName = "Dinesh"
        
        let student = Studenttttt()
        student.firstName = "Bharath"
        student.lastName = "Bharath"
        
        let fos = Fossil()// Parent Watch
        print(fos.rotateMyClock())
    }
    

}

protocol CommonClassProtocol {
    
    var firstName : String? { get }
    var lastName : String? { get set }
    var address : String? { get set }
    func rotateMyClok()
    
}


class CommonClassInheritance {
    
    var firstName : String?
    var lastName : String?
    var address : String?
    
    
}



class Studenttttt : CommonClassProtocol  {
    var firstName: String?
    
    func rotateMyClok() {
        
    }

    var lastName: String?
    
    var address: String?
    
}

class Teacher  : CommonClassInheritance {
    
    
}

class Watch {

    func rotateMyClock() -> Int8 {
        return 10
    }
}

class Fossil: Watch {
    
}


//Class Structs enums

