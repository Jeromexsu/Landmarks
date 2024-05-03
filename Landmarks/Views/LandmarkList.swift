//
//  LandmarkList.swift
//  Landmarks
//
//  Created by JeremySu on 3/5/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
