//
//  ContentView.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tab : Tab = .feature
    enum Tab {
        case feature
        case list
    }
    var body: some View {
        TabView(selection: $tab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.feature)
            
            LandmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
