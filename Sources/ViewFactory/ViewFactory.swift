//
//  ViewFactory.swift
//  StoryboardInstantiable
//
//  Created by marcin on 01/10/2017.
//  Copyright © 2017 Piotr Więcaszek. All rights reserved.
//

import Foundation
import UIKit

open class ViewFactory {
    
    open func create<Controller: UIViewController>() -> Controller {
        fatalError()
    }
}


