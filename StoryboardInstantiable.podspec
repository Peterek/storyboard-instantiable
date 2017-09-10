Pod::Spec.new do |spec|
  spec.name = "StoryboardInstantiable"
  spec.version = "1.0.0"
  spec.summary = "A nicer way to instantiate controller from storyboard in Swift."
  spec.homepage = "https://github.com/Peterek/storyboard-instantiable"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Piotr Więcaszek" => 'pwiecaszek@example.com' }

  spec.platform = :ios, "8.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/Peterek/storyboard-instantiable.git", tag: "{spec.version}", submodules: true }
  spec.source_files = "Sources/**/*"

  spec.frameworks = "UIKit"
end