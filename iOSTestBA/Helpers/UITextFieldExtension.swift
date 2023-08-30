//
//  UITextFieldExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension UITextField{
    
    func setMaxCount(to textField: UITextField, in range: NSRange, for string: String, count maxCount: Int) -> Bool {
        
        let currentName = textField.text ?? ""
        
        guard let range = Range(range, in: currentName) else {return false}
        
        let updatedName = currentName.replacingCharacters(in: range, with: string)
        
        return updatedName.count <= maxCount
    }
    
    func setCharaterType(to textField: UITextField, in range: NSRange, for string: String, with CharacterType: CharacterSet) -> Bool {
                
        let allowedCharacters = CharacterType
        
        let characterSet = CharacterSet(charactersIn: string)

        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    
    
    
    
}
