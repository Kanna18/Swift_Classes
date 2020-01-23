//
//  FirstViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 22/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController,SecondViewPRotocols {

    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonCLick(_ sender: Any) {
        
        let sv = self.storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        sv.delegate = self
        self.navigationController?.pushViewController(sv, animated: true)
    }
    
    
    
    func sendTheTextFieldString(tfTextt:String){
        nameLabel.text = tfTextt
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
