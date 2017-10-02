//
//  ViewControllerInstantiable.swift
//  StoryboardInstantiable
//
//  Created by marcin on 01/10/2017.
//  Copyright © 2017 Piotr Więcaszek. All rights reserved.
//

import Foundation

public protocol Instantiable where Self: UIViewController {
    associatedtype Dependency
    
    static var factory: ViewFactory { get }
    
    static func instantiate(dependency: Dependency) -> Self
    
    func setup(dependency: Dependency)
}

public extension Instantiable {
    
    static func instantiate(dependency: Dependency) -> Self {
        
        let viewController: Self = Self.factory.create()
        viewController.setup(dependency: dependency)
        
        return viewController
    }
}

public extension Instantiable where Dependency == Void {
    
    static func instantiate() -> Self {
        return Self.instantiate(dependency: ())
    }
}

