//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

import Foundation

@objcMembers
class Contact: NSObject {
    
    var name: String
    var relationship: String?
    
    @objc init(name: String, relationship:String? = nil) {
        self.name = name
        self.relationship = relationship
    }
}
