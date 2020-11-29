//
//  DailymotionUser.swift
//  UserList
//
//  Created by Adrian Kaleta on 28/11/2020.
//

import Foundation

public struct DailymotionUser: Codable {
    public var login: String?
    public var avatarUrl: String?

    enum CodingKeys: String, CodingKey {
        case login = "username"
        case avatarUrl = "avatar_360_url"
    }
    
    init() {
        
    }
}
