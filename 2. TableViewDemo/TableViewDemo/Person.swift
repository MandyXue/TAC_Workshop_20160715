//
//  Person.swift
//  TableViewDemo
//
//  Created by MandyXue on 16/7/15.
//  Copyright © 2016年 AppleClub. All rights reserved.
//

import Foundation

class Person: NSObject {
    
    var name: String
    var gender: String
    
    override init() {
        name = "unknown"
        gender = "unknown"
    }
    
    init(name: String, gender: String) {
        self.name = (name == "") ? "unknown": name
        self.gender = (gender == "") ? "unknown": gender
    }
}