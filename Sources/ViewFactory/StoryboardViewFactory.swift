//
//  StoryboardViewFactory.swift
//  StoryboardInstantiable
//
//  Created by marcin on 01/10/2017.
//  Copyright © 2017 Piotr Więcaszek. All rights reserved.
//

import Foundation
import UIKit

open class StoryboardViewFactory: ViewFactory {
    
    let storyboardName: String
    let storyboardIdentifier: String?
    let bundle: Bundle?
    
    public init(storyboardName: String, storyboardIdentifier: String? = nil, bundle: Bundle? = nil) {
        self.storyboardName = storyboardName
        self.storyboardIdentifier = storyboardIdentifier
        self.bundle = bundle
        super.init()
    }
    
    override open func create<Controller>() -> Controller where Controller : UIViewController {
        let storyboard = UIStoryboard(name: self.storyboardName, bundle: self.bundle)
        
        let viewController: UIViewController!
        if let identifier = self.storyboardIdentifier {
            viewController = storyboard.instantiateViewController(withIdentifier: identifier)
        } else {
            viewController = storyboard.instantiateInitialViewController()
        }
        
        return viewController as! Controller
    }
    
}
