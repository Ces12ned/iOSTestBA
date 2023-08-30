//
//  BirthDayCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class BirthDayCell: UITableViewCell {

    //MARK: - UIObjects
    
    
    private let birthDayPicker: UIDatePicker = {
        
        let birthDayPicker = UIDatePicker()
        birthDayPicker.preferredDatePickerStyle = .inline
        birthDayPicker.datePickerMode = .date
        birthDayPicker.translatesAutoresizingMaskIntoConstraints = false
        return birthDayPicker
        
    }()
    
    
    private let birthDayTextField: UITextField = {
        
        let birthDayTextField = UITextField()
        birthDayTextField.placeholder = "Selecciona tu fecha de nacimiento"
        birthDayTextField.translatesAutoresizingMaskIntoConstraints = false
        return birthDayTextField
        
    }()
    
    
    //MARK: - Properties & Initializers
    
    
    
    //MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureBirthDayTextField()
        
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    
    //MARK: - Methods

    private func configureBirthDayTextField(){
        
        contentView.addSubview(birthDayTextField)
        birthDayTextField.inputView = birthDayPicker
        birthDayTextField.inputAccessoryView = configureToolBarForBirthDayPicker()
        setBirthDayTextFieldConstraints()
    }
    
    private func setBirthDayTextFieldConstraints() {
        
        NSLayoutConstraint.activate([
            birthDayTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1.5),
            birthDayTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            birthDayTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            birthDayTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func configureToolBarForBirthDayPicker() -> UIToolbar{
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(image: UIImage(systemName: "checkmark.diamond"), style: .done, target: nil, action: #selector(doneEditing))
        toolBar.setItems([doneButton], animated: true)
        toolBar.barTintColor = .white
        toolBar.tintColor = .black
        return toolBar
        
    }
    
    @objc func doneEditing(){
        birthDayPicker.doneEditing(with: birthDayTextField, on: self)
    }

}
    

