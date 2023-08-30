//
//  UIViewControllerExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension UIViewController{
    
    @objc func goToNextVC(){
                    
        let selectedCellsViewController = SelectedViewController()
                    
        self.show(selectedCellsViewController, sender: self)

        
    }
}


