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

        
        if doesTheSelectedCellAlreadyExists(id: cells[indexPath.row].id){
            return
        }else{
            selectedCells.append(CellTypeModel(isSelected: true, type: cells[indexPath.row], id: cells[indexPath.row].id))
            print(selectedCells)
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        deleteCell(id: cells[indexPath.row].id, indexPath: indexPath.row)
}

    func doesTheSelectedCellAlreadyExists(id: Int) -> Bool{
        
        for selectedCells in selectedCells{
            if id == selectedCells.id{
                return true
            }
        }
        
        return false
    }
    
    func deleteCell(id: Int?, indexPath: Int) {
        if let id = id {
            for selectedCells in selectedCells {
                if id == selectedCells.id {
                    self.selectedCells.removeAll{ $0.id == self.cells[indexPath].id}
                    return
                }
            }
        }
    }

}
