//
//  CoreDataManager.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import Foundation

protocol CoreDataManagerProtocol {
    func getData() -> String
}

class CoreDataManager: CoreDataManagerProtocol {
    func getData() -> String {
        return "Data!!"
    }
}
