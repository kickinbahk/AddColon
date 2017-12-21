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
    // gihub.com/kickinbahk
    
    func parseString(str: String) -> String {
        var addColon = [String]()
        
        var counter = 1
        for char in str {
            
            if counter % 2 == 0 {
                addColon.append("\(char)")
                
                if counter == str.count {
                    break
                }
                
                addColon.append(":")
                counter += 1
            } else {
                addColon.append("\(char)")
                counter += 1
            }
        }
        
        let addColonString = addColon.joined(separator: "")
        return addColonString
    }
    
}
