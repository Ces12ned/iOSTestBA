//
//  CellType.swift
//  iOSTestBA
//
//  Created by Edgar Cisneros.
//

import UIKit

enum CellType: Int, CaseIterable, Identifiable{
    
    case camera
    case photo
    case fullName
    case phoneNumber
    case birthDate
    case sex
    case favoriteColor
    
    
    var id: Int {return rawValue}

    
    var numberOfRows: Int{
        switch self{
        case .camera: return 1
        case .photo: return 1
        case .fullName: return 1
        case .phoneNumber: return 1
        case .birthDate: return 1
        case .sex: return 2
        case .favoriteColor: return 6
        }
    }
    
    
    var headerTitle: String{
        switch self{
        case .camera: return "Cámara"
        case .photo: return "Foto"
        case .fullName: return "Nombre completo"
        case .phoneNumber: return "Número telefónico"
        case .birthDate: return "Fecha de nacimiento"
        case .sex: return "Sexo (Masculino/Femenino)"
        case .favoriteColor: return "Color Favorito"
        }
    }
    
    var cellIdentifier: String{
        switch self{
        case .camera: return "cameraCell"
        case .photo: return "photoCell"
        case .fullName: return "fullNameCell"
        case .phoneNumber: return "phoneNumberCell"
        case .birthDate: return "birthDayCell"
        case .sex: return "sexCell"
        case .favoriteColor: return "favoriteColorCell"
        }
    }
    
    var rowsHeight: CGFloat{
        switch self{
        case .camera: return 80
        case .photo: return 80
        case .fullName: return 40
        case .phoneNumber: return 40
        case .birthDate: return 60
        case .sex: return 40
        case .favoriteColor: return 30
        }
    }
    
}



