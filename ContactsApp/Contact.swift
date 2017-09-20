//
//  Contact.swift
//  ContactsApp
//
//  Created by William McKelvey on 9/20/17.
//  Copyright © 2017 William McKelvey. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var name:String?
    var phoneNumber:String?
    init(name:String? = nil, phoneNumber:String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    }

}

var contact1 = Contact(name: "Peter", phoneNumber: "888-889-3434")
var contact2 = Contact(phoneNumber: "800-800-8000")
var contact3 = Contact(name: "John")
var contact4 = Contact()
