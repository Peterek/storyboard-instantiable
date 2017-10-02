//
//  XibViewFactory.swift
//  StoryboardInstantiable
//
//  Created by marcin on 01/10/2017.
//  Copyright © 2017 Piotr Więcaszek. All rights reserved.
//

import Foundation
import UIKit

open class XibViewFactory: ViewFactory {
    
    let nibName: String
    let bundle: Bundle?
    
    public init(nibName: String, bundle: Bundle? = nil) {
        self.nibName = nibName
        self.bundle = bundle
        super.init()
    }
    
    override open func create<Controller>() -> Controller where Controller : UIViewController {
        let viewController = Controller(nibName: self.nibName, bundle: self.bundle)
        return viewController
    }
}
