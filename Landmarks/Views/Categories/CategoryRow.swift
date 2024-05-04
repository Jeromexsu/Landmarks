//
//  CategoryRow.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(categoryName)
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
        }
        .frame(height:185)
        .padding(.top, 15)
        .padding(.bottom, 15)

    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(categoryName: landmarks[0].category.rawValue, items: landmarks)
}
