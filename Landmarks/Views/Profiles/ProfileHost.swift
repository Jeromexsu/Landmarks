//
//  ProfileHost.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(modelData.profile.username)
                    .font(.title)
                    .bold()
                Spacer()
                EditButton()
            }
            .padding(.leading)
            .padding(.trailing)


            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
