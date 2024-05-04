//
//  Profile.swift
//  Landmarks
//
//  Created by JeremySu on 4/5/2024.
//

import Foundation

struct Profile {
    var username: String
    var preferNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username:"Jeremy")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case fall = "🍂"
        case winter = "⛄️"
        
        var id: String {rawValue}
    }
}
