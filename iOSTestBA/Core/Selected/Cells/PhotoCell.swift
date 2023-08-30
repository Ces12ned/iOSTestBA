//
//  PhotoCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class PhotoCell: UITableViewCell {

    //MARK: - UIObjects
    
    private let photoImageView: UIImageView = {
        
        let photoImageView = UIImageView()
        
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.clipsToBounds = true
        photoImageView.contentMode = .scaleToFill
        return photoImageView

    }()
    
    
    

    //MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configurePhotoImageView()
     }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    
    //MARK: - Methods
    
    private func configurePhotoImageView(){
        
        contentView.addSubview(photoImageView)
        guard let safeURL = URL(string: "https://http2.mlstatic.com/vegeta-tamano-real-para-armar-en-papercraft-D_NQ_NP_892880-MLA26232224460_102017-F.jpg") else {return}
        photoImageView.load(url: safeURL)
        setPhotoImageViewConstraints()
        
    }
    
    private func setPhotoImageViewConstraints(){
        
        NSLayoutConstraint.activate([
            photoImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            photoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            photoImageView.widthAnchor.constraint(equalToConstant: 60),
            photoImageView.heightAnchor.constraint(equalToConstant: 65)
        ])
        
        photoImageView.layer.cornerRadius = 30
    }

}
