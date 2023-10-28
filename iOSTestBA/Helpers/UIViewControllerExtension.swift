//
//  UIViewControllerExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension UIViewController{
    

    func updateAccessoryTypeForAllRows(in tableView: UITableView,with dataCount: Int) {
        
        for i in 0..<dataCount {
            let indexPath = IndexPath(row: i, section: 0)
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .none
            cell?.isSelected = false
        }
    }
    
}


