//
//  ContentView.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tab : Tab = .feature
    @State private var showProfile = false
    enum Tab {
        case feature
        case list
    }
    var body: some View {
        NavigationStack {
            TabView(selection: $tab) {
                Group {
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
                .padding(.top, -180)
            }
            .toolbar {
                Button {
                    showProfile.toggle()
                } label: {
                    Label("show profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showProfile) {
                ProfileHost()
                    .environment(ModelData())
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
