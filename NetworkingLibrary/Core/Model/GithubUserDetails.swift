//
//  GithubUserDetails.swift
//  UserList
//
//  Created by Adrian Kaleta on 28/11/2020.
//

import Foundation

public struct GithubUserDetails: Codable {
    public var login: String?
    public var avatarUrl: String?
    public var name: String?
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
        case name
    }
    
    init() {
        
    }
}
