
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wicked/always_renderable/version"

Gem::Specification.new do |spec|
  spec.name          = "wicked-always_renderable"
  spec.version       = Wicked::AlwaysRenderable::VERSION
  spec.authors       = ["Toshiyuki HINA"]
  spec.email         = ["toshiyuki.hina@gmail.com"]

  spec.summary       = %q{Wicked extension for rendering always}
  spec.description   = %q{This module provides the way to render instead of redirect_to.}
  spec.homepage      = "https://github.com/toshiyukihina/wicked-always_renderable"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "activesupport"
  spec.add_dependency "wicked"
end
