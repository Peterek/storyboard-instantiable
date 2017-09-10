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