//
//  User.swift
//  GitHub
//
//  Created by Adrian Kaleta on 29/11/2020.
//

import Foundation

public struct GithubUser: Codable {
    public var login: String?
    public var avatarUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
    }
    
    init() {}
}


