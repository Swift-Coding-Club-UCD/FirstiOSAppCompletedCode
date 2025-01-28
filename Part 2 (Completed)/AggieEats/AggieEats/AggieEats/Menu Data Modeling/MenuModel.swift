//
//  MenuModel.swift
//  AggieEats
//
//  Created by Ashley Valdez on 1/27/25.
//

import Foundation
import OrderedCollections

struct Menu : Codable, Hashable {
    let id = UUID()
    let day: String
    let locationName: String
    let coordinate: [Double]
    let menu: OrderedDictionary<String, [String]>
    
    func getTodaysLocation(_ today: String)-> String{
        if today == day{
            return locationName
        }
        return ""
    }
    
    
}
