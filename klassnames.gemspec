# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "klassnames/version"

Gem::Specification.new do |spec|
  spec.name          = "klassnames"
  spec.version       = Klassnames::VERSION
  spec.authors       = ["Komposable"]
  spec.email         = ["contact@komposable.io"]

  spec.summary       = "View helper to simplify conditional class in view"
  spec.description   = "View helper to simplify conditional class in view"
  spec.homepage      = "https://github.com/komposable/klassnames"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec-rails", "~> 3.6"
end
