//
//  JsonData.swift
//  SwiftClasses
//
//  Created by Dineshkumar kothuri on 24/01/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class JsonData: NSObject {

    struct JSON : Codable {
        var feed : Feed?
    
        enum CodingKeys: String, CodingKey {
            case feed = "feed"
        }
    }
    
    struct Feed : Codable {
        
        var results : [Item]?
        
        enum CodingKeys: String, CodingKey {
            case results = "results"
        }
              
    }
    
    struct Item : Codable {
        
       var artistName : String?
       var id : String?
       var releaseDate : String?
       var name : String?
       var kind : String?
       var copyright : String?
       var artistId : String?
       var artistUrl : String?
       var artworkUrl100 : String?
        
        enum CodingKeys: String,CodingKey {
            case artistName = "artistName"
            case id = "id"
            case releaseDate = "releaseDate"
            case name = "name"
            case kind =  "kind"
            case copyright = "copyright"
            case artistId  = "artistId"
            case artistUrl = "artistUrl"
            case artworkUrl100 = "artworkUrl100"
            
        }
    }
    
    
}
