//
//  ArchitectureExampleApp.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import SwiftUI

class AllServices: ObservableObject {
    
    private lazy var coreDataManager: CoreDataManagerProtocol = {
       return CoreDataManager()
    }()
    
    public lazy var secondViewService: SecondViewServiceProtocol = {
        return SecondViewService(coreDataManager: coreDataManager)
    }()
    
}

@main
struct ArchitectureExampleApp: App {
    @StateObject private var allServices = AllServices()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(allServices)
        }
    }
}
