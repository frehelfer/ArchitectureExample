//
//  ContentView.swift
//  ArchitectureExample
//
//  Created by Frédéric Helfer on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var allServices: AllServices
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                SecondView(secondViewService: allServices.secondViewService)
            } label: {
                Text("Go to Second View")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AllServices())
    }
}
