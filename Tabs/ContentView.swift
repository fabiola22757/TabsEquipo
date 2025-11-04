//
//  ContentView.swift
//  Tabs
//
//  Created by win603 on 31/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           WelcomeView()
                .tabItem {
                    Label("Casita", systemImage: "house")
                }
            
            CounterView()
                .tabItem {
                    Label("Contadoration", systemImage: "clock")
                }
            
        }.accentColor(.red)
    }
}

#Preview {
    ContentView()
}
