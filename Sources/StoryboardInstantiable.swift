/**
 *  StoryboardInstantiable
 *  Copyright (c) Piotr Więcaszek 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

import UIKit

public protocol StoryboardInstantiable where Self: UIViewController {
    
    associatedtype Dependencies
    
    static var storyboardName: String { get }
    
    static var storyboardIdentifier: String { get }
    
    static var bundle: Bundle? { get }
    
    func setup(dependencies: Dependencies)
}

public extension StoryboardInstantiable {
    
    static var bundle: Bundle? {
        return nil
    }
    
    static func instantiateFromStoryboardWith(dependencies: Dependencies) -> Self {
        
        let storyboard = UIStoryboard.init(name: self.storyboardName, bundle: self.bundle)
        
        let viewController: Self = storyboard.instantiateViewController(withIdentifier: self.storyboardIdentifier) as! Self
        
        viewController.setup(dependencies: dependencies)
        
        return viewController
    }
}

