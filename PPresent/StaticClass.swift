//
//  StaticClass.swift
//  PPresent
//
//  Created by Daniel Vega on 1/19/23.
//

import Foundation
import UIKit

public class StaticClass: Codable{
    
    static var imagePicker = UIImagePickerController()
    static var alertController = UIAlertController()
    static var imageArray = [String]()
    static var friendNamesArray = ["sarah","scarlett","mason","joey","eric","kenneth","cody","olivia","katie","maddie","nolan","karson","sadie","nichoals","cube"]
    static var items = ["food","calculator","headphones","binder","water bottle", "speaker","pencil","notebook","phone", "shoes", "charger", "books","pants","clothes"]
    
}

public class User: Codable {
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
