//
//  UserClass.swift
//  PPresent
//
//  Created by Daniel Vega on 2/8/23.
//

import Foundation
import UIKit

public class Userclass: Codable {
    var firstName: String
    var lastName: String
    var age: Int
    var gender: String
    var bio: String
    
    init(f:String, l:String, a: Int, g:String, b:String) {
        firstName = f
        lastName = l
        age = a
        gender = g
        bio = b
        
    }
    
}
