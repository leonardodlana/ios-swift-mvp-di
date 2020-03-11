//
//  BasePresenter.swift
//  Common
//
//  Created by Genesis on 5/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation

open class BasePresenter<V> {
    
    public var view : V? = nil
    
    public init() {}

    public func attachView(view: V) {
        self.view = view
        onViewAttached()
    }

    public func detachView() {
        view = nil
        onViewDetached()
    }

    open func onViewAttached() {
        fatalError("Must Override")
    }

    open func onViewDetached() { /* Override in children when required */}

}
