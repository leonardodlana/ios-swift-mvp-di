//
//  DependencyInjection.swift
//  MultiBrandTest
//
//  Created by Genesis on 10/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation
import Swinject
import UserModule

class DependencyInjection {
    // ** Singleton
    static let instance = DependencyInjection()
    
    private let container : Container = Container()
    
    private init() {}
    
    private func addModules() {
        addModule(module: UserModule.self)
    }
    
    private func addModule(module: DIModule.Type) {
        let moduleInstance = module.init()
        moduleInstance.register(dependencyInjection: DependencyInjection.instance)
    }
    
    public func getInstanceOf<GenericType>(_ type: GenericType.Type) -> GenericType? {
        return container.resolve(type)
    }
    
    public func addInstanceOf<GenericType>(_ type: GenericType.Type, factory: @escaping (Resolver) -> GenericType) {
        container.register(type, factory:  factory)
    }
    
    // ** Static functions
    
    static func register() {
           instance.addModules()
    }
    
}
