//
//  UserModule.swift
//  MultiBrandTest
//
//  Created by Genesis on 11/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation
import UserModule

class UserModule: DIModule {
    
    override func register(dependencyInjection: DependencyInjection) {
        // Add UserRepository Implementation
        dependencyInjection.addInstanceOf(UserRepository.self) { _ in UserRepositoryImpl() }
        
        // Add UserPresenter
        dependencyInjection.addInstanceOf(UserContractPresenter.self) { _ in UserPresenter(
            userRepository: dependencyInjection.getInstanceOf(UserRepository.self)!
            )
        }
    }
    
}
