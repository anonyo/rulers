# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Anonyo Hossain"]
  spec.email         = ["anonyo.hossain@gmail.com"]
  spec.summary       = %q{A Rack-based web framework}
  spec.description   = %q{A Rack-based web framework, but more awesome.}
  spec.homepage      = "http://anonyo.xyz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'rack', '~> 1.6'
  spec.add_runtime_dependency 'rack-test'
end
