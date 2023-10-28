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
        print(selectedCells)
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        deleteCell(id: cells[indexPath.row].id, indexPath: indexPath.row)


    }
    
    func deleteCell(id: Int?, indexPath: Int) {
        self.selectedCells.removeAll{ $0.id == self.cells[indexPath].id}
    }
    
}



