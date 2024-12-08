//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Eren Elçi on 6.12.2024.
//

import Foundation


class RootViewModel {
    private let loginStorageService: LoginStorageService
    
    weak var output: RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService) {
        self.loginStorageService = loginStorageService
    }
    
    func checkLogin(){
        if let acceessToken = loginStorageService.getUserAccessToken() , !acceessToken.isEmpty {
            //showMainApp
            output?.showMainApp()
        } else {
            //showLogin
            output?.showLogin()
        }
    }
    
    
}
