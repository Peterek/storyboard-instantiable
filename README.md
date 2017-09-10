<p align="center">
    <a href="https://cocoapods.org/pods/Files">
        <img src="https://img.shields.io/cocoapods/v/StoryboardInstantiable.svg" alt="CocoaPods" />
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat" alt="Carthage" />
    </a>
</p>

## Example

Conform to StoryboardInstantiable

``` swift
import StoryboardInstantiable

class ChickenViewController: UIViewController {
    
    var chickenDependency: Chicken!
}

extension ChickenViewController: StoryboardInstantiable {
    
    typealias Dependencies = Chicken
    
    static var storyboardName: String { return "ChickenStoryboard" }
    
    static var storyboardIdentifier: String { return "chickenVC" }
    
    func setup(dependencies: Chicken) {
        self.chickenDependency = dependencies
    }
    
}
```

Then simply call instantiateFromStoryboardWith on viewController type

``` swift
let chickenViewController = ChickenViewController.instantiateFromStoryboardWith(dependencies: Chicken())
```

## Usage

### Manual

- Drag the file `StoryboardInstantiable.swift` into your application's Xcode project.

### CocoaPods

- pod 'StoryboardInstantiable'