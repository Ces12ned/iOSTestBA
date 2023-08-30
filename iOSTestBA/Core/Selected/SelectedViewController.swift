//
//  SelectedViewController.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

class SelectedViewController: UIViewController {
    
    //MARK: - UIObjects
    
    private let cellTableView: UITableView = {
        
        let cellTableView = UITableView()
        cellTableView.translatesAutoresizingMaskIntoConstraints = false
        cellTableView.clipsToBounds = true
        cellTableView.layer.cornerRadius = 12
        cellTableView.layer.borderWidth = 0.5
        cellTableView.allowsMultipleSelection = true
        cellTableView.register(UITableViewCell.self, forCellReuseIdentifier: "dataCell")
        return cellTableView
    }()
    

    //MARK: - Properties & Initializers
    
    var cells = CellType.allCases
    
    var selectedCells = [CellTypeModel]()
        
    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        configureCellTableView()
        
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

}




