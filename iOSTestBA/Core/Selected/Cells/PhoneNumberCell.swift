//
//  PhoneNumberCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class PhoneNumberCell: UITableViewCell {

    
    //MARK: - UIOBjects
    
    private let phoneNumberTextField: UITextField = {
        
        let phoneNumberTextField = UITextField()
        phoneNumberTextField.placeholder = "Ingresa tu número telefónico"
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.textContentType = .telephoneNumber
        phoneNumberTextField.keyboardType = .numberPad
        phoneNumberTextField.returnKeyType = .continue
        return phoneNumberTextField
        
    }()

    //MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configurePhoneNumberTextField()
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    //MARK: - Methods
    
    
    private func configurePhoneNumberTextField(){
        
        contentView.addSubview(phoneNumberTextField)
        phoneNumberTextField.delegate = self
        setPhoneNumberTextFieldConstraints()
        
    }
    
    private func setPhoneNumberTextFieldConstraints() {
        
        NSLayoutConstraint.activate([
            phoneNumberTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1.5),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: contentView.frame.height)
        ])
    }

}

extension PhoneNumberCell: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return textField.setMaxCount(to: textField, in: range, for: string, count: 10) && textField.setCharaterType(to: textField, in: range, for: string, with: CharacterSet.decimalDigits) ? true : false
        
    }
}
