//
//  GenericsViewController.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 24/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class GenericsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var s1 = 1
        var s2 = 45
        self.swapTwoValues(&s1, &s2)
        
     
        
        
        var request = URLRequest(url: URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/coming-soon/all/10/explicit.json")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
            
            print(data)
            guard let items = try? JSONDecoder().decode(JsonData.JSON.self, from: data) else {
                print("Error: Couldn't decode data into Blog")
                return
            }
            
            print(items)
            
            for itw in (items.feed?.results)!{
                
                print(itw.artistName!)
            }


        }

        task.resume()
        
        
        
        print(s1,s2)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

    func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
}
