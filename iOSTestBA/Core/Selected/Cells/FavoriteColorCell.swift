//
//  FavoriteColorCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class FavoriteColorCell: UITableViewCell {
    
    //MARK: - UIObjects
    
    let circleColorView : UIView = {
        
        let circleColorView = UIView()
        circleColorView.translatesAutoresizingMaskIntoConstraints = false
        return circleColorView
        
    }()
    
    
    //MARK: - Properties & Initializers
    
    let colorModel = ColorModel()
    
    var indexForCell: Int?{
        
        didSet{
            guard let safeIndexPath = indexForCell else {return}
            circleColorView.backgroundColor = colorModel.colors[safeIndexPath]
        }
        
    }

    
    
    //MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCircleColorView()
        
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    //MARK: - Methods
    
    
    private func configureCircleColorView(){
        contentView.addSubview(circleColorView)
        setCircleColorViewConstraints()
        
    }
    
    
    private func setCircleColorViewConstraints(){
        
        NSLayoutConstraint.activate([
            circleColorView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circleColorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            circleColorView.widthAnchor.constraint(equalToConstant: 60),
            circleColorView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        circleColorView.layer.cornerRadius = 8

    }
    

}
