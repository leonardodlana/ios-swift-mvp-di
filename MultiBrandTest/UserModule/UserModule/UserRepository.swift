//
//  UserRepository.swift
//  UserModule
//
//  Created by Genesis on 10/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation

public protocol UserRepository {
    func getUser() -> String
}
