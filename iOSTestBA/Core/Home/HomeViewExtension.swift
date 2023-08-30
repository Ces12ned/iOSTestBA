//
//  SelectedViewExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellCases.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cellCases[section].headerTitle
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellCases[section].numberOfRows
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellCases[indexPath.section].rowsHeight
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellSection = cellCases[indexPath.section]
        let identifier = cellCases[indexPath.section].cellIdentifier
        
        switch cellSection{
        case .camera:
            
            return tableView.createDequeueCell(with: identifier, at: indexPath) as! CameraCell
            
        case .photo:
            return tableView.createDequeueCell(with: identifier, at: indexPath) as! PhotoCell
            
        case .fullName:
            return tableView.createDequeueCell(with: identifier, at: indexPath) as! FullNameCell
            
        case .phoneNumber:
            return tableView.createDequeueCell(with: identifier, at: indexPath) as! PhoneNumberCell
            
        case .birthDate:
            return tableView.createDequeueCell(with: identifier, at: indexPath) as! BirthDayCell
            
        case .sex:
            let sexCell = tableView.createDequeueCell(with: identifier, at: indexPath) as! SexCell
            sexCell.indexForCell = indexPath.row
            return sexCell
            
        case .favoriteColor:
            let favoriteColorCell = tableView.createDequeueCell(with: identifier, at: indexPath) as! FavoriteColorCell
            favoriteColorCell.indexForCell = indexPath.row
            return favoriteColorCell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
