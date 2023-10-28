//
//  CameraCell.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class CameraCell: UITableViewCell {
    
    
    //MARK: - UIObjects
    
    private let cameraImageView: UIImageView = {
        
        let cameraImageView = UIImageView()
        
        cameraImageView.translatesAutoresizingMaskIntoConstraints = false
        cameraImageView.clipsToBounds = true
        cameraImageView.contentMode = .scaleToFill
        cameraImageView.layer.borderColor = UIColor.black.cgColor
        cameraImageView.layer.borderWidth = 0.1
        cameraImageView.isUserInteractionEnabled = true
        return cameraImageView
        
    }()
    
    
    
    //MARK: - Properties & Initializers
    
    
    
    //MARK: - Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCameraImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
    
    //MARK: - Methods
    
    private func configureCameraImageView(){
        
        contentView.addSubview(cameraImageView)
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageAction))
        cameraImageView.addGestureRecognizer(tapGR)
        setCameraImageViewConstraints()
        
    }
    
    @objc func imageAction(){
        
        guard let safeURL = URL(string: "https://http2.mlstatic.com/vegeta-tamano-real-para-armar-en-papercraft-D_NQ_NP_892880-MLA26232224460_102017-F.jpg") else {return}
        cameraImageView.load(url: safeURL)
}
    
    private func setCameraImageViewConstraints(){
        
        NSLayoutConstraint.activate([
            cameraImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cameraImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            cameraImageView.widthAnchor.constraint(equalToConstant: 60),
            cameraImageView.heightAnchor.constraint(equalToConstant: 65)
        ])
        
        cameraImageView.layer.cornerRadius = 30
        
    }
}
