//
//  UserPresenter.swift
//  UserModule
//
//  Created by Genesis on 5/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation
import Common

public class UserPresenter: BasePresenter<UserContractView>, UserContractPresenter {
    
    let userRepository : UserRepository
    
    public init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    public override func onViewAttached() {
        view?.showLoading(loading: true)
               DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.view?.showLoading(loading: false)
                   
                   DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.view?.showUser(user: self.userRepository.getUser())
                   }
               }
    }
    
    public func onClick() {
        
    }
    
    public override func onViewDetached() {
    }
    
}
