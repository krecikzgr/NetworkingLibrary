//
//  GetDailymotionUsersResponse.swift
//  UserList
//
//  Created by Adrian Kaleta on 28/11/2020.
//

import Foundation

public struct GetDailymotionUsersResponse: Codable {
    public let page, limit: Int?
    public let explicit: Bool?
    public let total: Int?
    public let hasMore: Bool?
    public let list: [DailymotionUser]?
    
    enum CodingKeys: String, CodingKey {
        case page, limit, explicit, total
        case hasMore = "has_more"
        case list
    }
}
