//
//  Validator.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 07/09/2022.
//

import Foundation

struct Validator {
    static func validatePassword(_ password: String) -> Bool{
        
        if password.count <= 8{
            return false
        }
        
        if !isUppercaseInString(password){
            return false
        }
        
        if password.range(of: ".*[^A-Za-z0-9].*", options: .regularExpression) == nil {
            return false
        }
        
        return true
    }
    
    static func validateEmail(_ email: String) -> Bool{
        
        return !email.isEmpty && email.contains("@")
    }
    
private
    
    static func isUppercaseInString(_ string: String) -> Bool{
        for char in string{
            if char.isUppercase{
                return true
            }
        }
        
        return false
    }
    
}
