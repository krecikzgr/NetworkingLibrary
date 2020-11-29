//
//  DailymotionAPI.swift
//  UserList
//
//  Created by Adrian Kaleta on 28/11/2020.
//

import Foundation

public class DailymotionAPI: APIProtocol {
    
    // MARK: - Internal properties
    
    public var session: URLSession {
        return URLSession.shared
    }
    
    public var url: URL {
        return URL(string: "https://api.dailymotion.com")!
    }
    
    public init(){  }
    
    
    private struct Consts {
        struct GetUsers {
            static let fields = "fields"
            static let fieldsValue = "avatar_360_url,username"
        }
        
        struct GetUserDetails {
            static let fields = "fields"
            static let fieldsValue = "avatar_360_url,username,screenname"
        }
    }
    
    public func getUsers(completionHandler: @escaping (Result<GetDailymotionUsersResponse, NetworkError>) -> Void) {
        var parameters: [String:Any] = [:]
        parameters[Consts.GetUsers.fields] = Consts.GetUsers.fieldsValue
        getObject(parameters:parameters,
                                path: "/users",
                                completionHandler: completionHandler)
    }
    
    public func getDetails(id: String, completionHandler: @escaping (Result<DailymotionUserDetails, NetworkError>) -> Void) {
        var parameters: [String:Any] = [:]
        parameters[Consts.GetUserDetails.fields] = Consts.GetUserDetails.fieldsValue
        getObject(parameters:parameters,
                                path: "/user/\(id)",
                                completionHandler: completionHandler)
    }
}
