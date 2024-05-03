//
//  CircleImage.swift
//  Landmarks
//
//  Created by JeremySu on 3/5/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay(
                Circle().stroke(.white,lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks[0].image)
}
