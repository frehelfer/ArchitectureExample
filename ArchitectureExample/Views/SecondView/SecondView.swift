//
//  SecondView.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import SwiftUI

struct SecondView: View {
    @StateObject private var vm: SecondViewModel
    
    init(secondViewService: SecondViewServiceProtocol) {
        _vm = StateObject(wrappedValue: SecondViewModel(secondViewService: secondViewService))
    }
    
    var body: some View {
        VStack {
            Text(vm.data)
        }
        .onAppear {
            vm.getData()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(
            secondViewService: SecondViewService(
                coreDataManager: CoreDataManager()
            )
        )
    }
}
