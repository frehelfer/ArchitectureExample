//
//  SecondViewService.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import Foundation

protocol SecondViewServiceProtocol {
    func getData() -> String
}

class SecondViewService: SecondViewServiceProtocol {
    
    private let coreDataManager: CoreDataManagerProtocol
    
    init(coreDataManager: CoreDataManagerProtocol) {
        self.coreDataManager = coreDataManager
    }
    
    func getData() -> String {
        return coreDataManager.getData()
    }
}
