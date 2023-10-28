//
//  FullNameCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class FullNameCell: UITableViewCell {
    
    //MARK: - UIOBjects
    
    
    private let fullNameTextField: UITextField = {
        
        let fullNameTextField = UITextField()
        fullNameTextField.placeholder = "Ingresa tu nombre completo"
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        fullNameTextField.textContentType = .name
        fullNameTextField.keyboardType = .alphabet
        fullNameTextField.returnKeyType = .done
        return fullNameTextField
        
    }()

    
    //MARK: - Properties
    
    
    
    
    //MARK: - Life Cycle
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureFullNameTextField()
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    //MARK: - Methods
    
    
    private func configureFullNameTextField(){
        
        contentView.addSubview(fullNameTextField)
        fullNameTextField.delegate = self
        setFullNameTextFieldConstraints()
        
    }
    
    private func setFullNameTextFieldConstraints() {
        
        NSLayoutConstraint.activate([
            fullNameTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1.5),
            fullNameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            fullNameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            fullNameTextField.heightAnchor.constraint(equalToConstant: contentView.frame.height)
        ])
    }
}


extension FullNameCell: UITextFieldDelegate{
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                
        
        
        return textField.setMaxCount(to: textField, in: range, for: string, count:35) && textField.setCharaterType(to: textField, in: range, for: string, with: CharacterSet.letters.union(CharacterSet.whitespaces)) ? true : false
    }
}
