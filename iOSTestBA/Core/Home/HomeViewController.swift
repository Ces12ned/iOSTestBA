//
//  HomeViewController.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - UIObjects
    
    private let cellTableView: UITableView = {
        
        let cellTableView = UITableView()
        cellTableView.translatesAutoresizingMaskIntoConstraints = false
        cellTableView.clipsToBounds = true
        cellTableView.layer.cornerRadius = 12
        cellTableView.layer.borderWidth = 0.5
        cellTableView.allowsMultipleSelection = true
        cellTableView.register(CameraCell.self, forCellReuseIdentifier: "cameraCell")
        cellTableView.register(PhotoCell.self, forCellReuseIdentifier: "photoCell")
        cellTableView.register(FullNameCell.self, forCellReuseIdentifier: "fullNameCell")
        cellTableView.register(PhoneNumberCell.self, forCellReuseIdentifier: "phoneNumberCell")
        cellTableView.register(BirthDayCell.self, forCellReuseIdentifier: "birthDayCell")
        cellTableView.register(SexCell.self, forCellReuseIdentifier: "sexCell")
        cellTableView.register(FavoriteColorCell.self, forCellReuseIdentifier: "favoriteColorCell")

        return cellTableView
    }()
    
    
    private let nextVCButton : UIButton = {
        
        let nextVCButton = UIButton()
        nextVCButton.translatesAutoresizingMaskIntoConstraints = false
        nextVCButton.titleLabel?.font = UIFont(name: "Futura", size: 18)
        nextVCButton.setTitle("Ir a seleccionados", for: .normal)
        nextVCButton.setTitleColor(.black, for: .normal)
        nextVCButton.backgroundColor = .systemCyan
        nextVCButton.layer.borderWidth = 2
        nextVCButton.layer.borderColor =  UIColor.black.cgColor
        nextVCButton.layer.cornerRadius = 18
        return nextVCButton
        
    }()
    
    //MARK: - Properties & Initializers
    
    var cellCases = CellType.allCases

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        configureCellTableView()
        configureNextVCButton()
    }
    
    
    //MARK: - Methods
    
    
    
    private func configureCellTableView(){
        view.addSubview(cellTableView)
        cellTableView.dataSource = self
        cellTableView.delegate = self
        setCellTableViewConstraints()
    }
    
    private func setCellTableViewConstraints(){
        
        NSLayoutConstraint.activate([
            cellTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:0),
            cellTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            cellTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            cellTableView.heightAnchor.constraint(equalToConstant: view.frame.height - 200)
        ])
    }
    
    private func configureNextVCButton(){
        
        view.addSubview(nextVCButton)
        setNextVCButtonConstraints()
        nextVCButton.addTarget(self, action: #selector(goToNextVC), for: .touchUpInside)
        
    }
    
    private func setNextVCButtonConstraints() {
        
        NSLayoutConstraint.activate([
            nextVCButton.topAnchor.constraint(equalTo: cellTableView.bottomAnchor, constant: 15),
            nextVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            nextVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            nextVCButton.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
}
