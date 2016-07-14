//
//  Person.swift
//  Demo
//
//  Created by MandyXue on 16/7/14.
//  Copyright © 2016年 AppleClub. All rights reserved.
//

import Foundation
import UIKit

class Person: NSObject {
    
    var name: String?
    var email: String?
    var avatar: UIImage?
    var status: Int = 0 // 0为默认：未关注，1为已关注但未互相关注，2为被关注但未互相关注，3为互相关注
    
    override init() {
        name = "unknown"
        email = "unknown"
        avatar = UIImage(named: "avatar")
    }
    
    init(name: String?, email: String?, avatar: UIImage?, status: Int) {
        self.name = (name == nil) ? "unknown": name!
        self.email = (email == nil) ? "unknown": email!
        self.avatar = (avatar == nil) ? UIImage(named: "avatar"): avatar!
        self.status = status
    }
}