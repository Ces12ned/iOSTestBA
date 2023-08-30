//
//  UITableViewExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension UITableView{
    
    func createDequeueCell(with identifier: String, at indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = self.dequeueReusableCell(withIdentifier: identifier , for: indexPath)
        
        return cellType
    }
    
     
        
    
    
}
