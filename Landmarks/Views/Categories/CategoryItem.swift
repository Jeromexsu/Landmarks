//
//  CategoryItem.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155,height: 155)
                .cornerRadius(5.0)
            
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.trailing, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
