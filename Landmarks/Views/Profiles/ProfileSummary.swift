//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    var body: some View {
        ScrollView {
            VStack(alignment:.leading, spacing: 10) {
//                Text(profile.username)
//                    .font(.title)
//                    .bold()
                Text("Notifications: \(profile.preferNotification ? "On" : "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date:")+Text(profile.goalDate, style:.date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
