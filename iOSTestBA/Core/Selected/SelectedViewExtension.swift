//
//  SelectedViewExtension.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

extension SelectedViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cells.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.createDequeueCell(with: "dataCell", at: indexPath)
        cell.textLabel?.text = cells[indexPath.row].headerTitle
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        selectedCells.append(cells[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        selectedCells.removeAll{ $0.id == cells[indexPath.row].id}
    }
}



