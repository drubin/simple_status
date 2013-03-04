# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_status/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_status"
  spec.version       = SimpleStatus::VERSION
  spec.authors       = ["David Rubin"]
  spec.email         = ["davidrub@gmail.com"]
  spec.description   = %q{Adds very simple status checks to rails apps}
  spec.summary       = %q{Simple Status}
  spec.homepage      = "https://github.com/drubin/simple_status"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'sinatra'
end
