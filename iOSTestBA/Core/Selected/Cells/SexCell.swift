//
//  SexCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class SexCell: UITableViewCell {

    //MARK: - UIObjects
    
    let sexLabel: UILabel = {
        
        let sexLabel = UILabel()
        sexLabel.translatesAutoresizingMaskIntoConstraints = false
        sexLabel.textAlignment = .left
    
        return sexLabel
    }()
    
    
    //MARK: - Properties & Initializers
    let sexModel = SexModel()

    
    var indexForCell: Int?{
        
        didSet{
            guard let safeIndexPath = indexForCell else {return}
            sexLabel.text = sexModel.sexs[safeIndexPath]
        }
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureSexLabel()
        
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }

    
    
    //MARK: - Methods

    private func configureSexLabel(){
        
        contentView.addSubview(sexLabel)
        setSexLabelConstraints()
        
    }
    
    private func setSexLabelConstraints() {
        
        NSLayoutConstraint.activate([
            sexLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1.5),
            sexLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            sexLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            sexLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
