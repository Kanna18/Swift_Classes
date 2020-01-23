//
//  SecondViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 22/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

@objc protocol SecondViewPRotocols {

    func sendTheTextFieldString(tfTextt:String)
    @objc optional func sendMeErrorResponse()
}

class SecondViewController: UIViewController {
    
    var delegate : SecondViewPRotocols?
    @IBOutlet weak var nameTF: UITextField!
   
    

    @IBAction func goBackClick(_ sender: Any) {
        
        delegate?.sendTheTextFieldString(tfTextt: nameTF.text!)
        self.navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        var hi = 100;
        
        
        
    }
    


}
