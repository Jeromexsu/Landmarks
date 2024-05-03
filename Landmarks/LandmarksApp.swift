//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by JeremySu on 3/5/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environment(modelData)
        }
    }
}
