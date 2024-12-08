//
//  LoginStorageServiceImpl.swift
//  LoginProtocolOriented
//
//  Created by Eren Elçi on 6.12.2024.
//

import Foundation

class LoginStorageServiceImpl: LoginStorageService {
    
    private let storage =  UserDefaults.standard
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    
    func setUserAccessToken(token: String) {
        storage.setValue(token, forKey: userAccessTokenKey)
    }
    
    func getUserAccessToken() -> String? {
        return storage.string(forKey: userAccessTokenKey)
    }
    
    
    
    
}
