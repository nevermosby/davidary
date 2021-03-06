# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'davidary/version'

Gem::Specification.new do |spec|
  spec.name          = "davidary"
  spec.version       = Davidary::VERSION
  spec.authors       = ["nevermosby"]
  spec.email         = ["robolwq@qq.com"]
  spec.summary       = "This is my first ruby gem"
  spec.description   = "This is my first ruby gem by David"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
