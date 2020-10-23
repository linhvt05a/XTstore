//
//  LoginModel.swift
//  XTstoreApp
//
//  Created by hoang linh on 10/23/20.
//

import Foundation

struct ResponseModel {
    let success: Bool?
    let message: String?
    
    enum CodingKeys: String, CodingKey {
        case success
        case message = "message"
        
    }
}

struct LoginModel : Codable {
    let id: Int?
    let userName:String?
    let userId: Int?
    let avatar: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case userName = "userName"
        case userId = "userId"
        case avatar = "avatar"
    }
    
}
