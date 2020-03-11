//
//  UserContract.swift
//  UserModule
//
//  Created by Genesis on 5/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation
import Common

public protocol UserContractView : BaseView {
    func showUser(user: String)
}

public protocol UserContractPresenter : BasePresenter<UserContractView> {
    func onClick()
}
