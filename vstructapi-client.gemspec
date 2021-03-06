# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vstructapi/client/version'

Gem::Specification.new do |spec|
  spec.name          = "vstructapi-client"
  spec.version       = Vstructapi::Client::VERSION
  spec.authors       = ["Joseph Pawletko"]
  spec.email         = ["jgp@nyu.edu"]
  spec.description   = %q{}
  spec.summary       = %q{Client library for vstruct-api application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activeresource", "~>4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
