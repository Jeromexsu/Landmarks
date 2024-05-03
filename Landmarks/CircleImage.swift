//
//  CircleImage.swift
//  Landmarks
//
//  Created by JeremySu on 3/5/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(.circle)
            .overlay(
                Circle().stroke(.white,lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
