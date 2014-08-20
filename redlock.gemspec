# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redlock/version'

Gem::Specification.new do |spec|
  spec.name          = "redlock"
  spec.version       = Redlock::VERSION
  spec.authors       = ["Salvatore Sanfilippo"]
  spec.email         = ["antirez@gmail.com"]
  spec.summary       = %q{Redlock Redis-based distributed locks implementation in Ruby}
  spec.homepage      = "https://github.com/antirez/redlock-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'redis'
end
