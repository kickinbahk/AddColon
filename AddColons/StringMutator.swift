//
//  StringMutator.swift
//  AddColons
//
//  Created by Josiah Mory on 12/21/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import Foundation

class StringMutator {
    
    // If a string is given, insert a colon after every 2 characters
    // String shouldn't end with a colon
    
    func parseString(str: String) -> String {
        var addColon = [String]()
        var counter = 1 // Allows us to check which character in the string we are on
        
        addColon = str.map { character -> String in
            
            if counter % 2 == 0 {
                if counter == str.count {
                    return "\(character)"
                }
                counter += 1
                return "\(character):"
            } else {
                counter += 1
                return "\(character)"
            }
        }
        
        let addColonString = addColon.joined(separator: "")
        return addColonString
    }
    
}
