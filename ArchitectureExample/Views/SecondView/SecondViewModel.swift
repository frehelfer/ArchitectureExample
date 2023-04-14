//
//  SecondViewModel.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import Foundation

class SecondViewModel: ObservableObject {
    @Published var data: String = ""
    
    private let secondViewService: SecondViewServiceProtocol
    
    init(secondViewService: SecondViewServiceProtocol) {
        self.secondViewService = secondViewService
    }
    
    func getData() {
        self.data = secondViewService.getData()
    }
    
}
