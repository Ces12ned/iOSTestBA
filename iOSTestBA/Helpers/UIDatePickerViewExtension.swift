//
//  UIDatePickerViewExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension UIDatePicker{
    
    func doneEditing(with textField: UITextField, on view: UIView){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        textField.text = dateFormatter.string(from: self.date)
        view.endEditing(true)
    }

}


