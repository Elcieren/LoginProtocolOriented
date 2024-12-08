//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Eren Elçi on 6.12.2024.
//

import Foundation

protocol LoginStorageService {
    var userAccessTokenKey: String { get }
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
    
    
    
}
