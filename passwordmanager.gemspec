# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'passwordmanager/version'

Gem::Specification.new do |spec|
  spec.name          = "passwordmanager"
  spec.version       = Passwordmanager::VERSION
  spec.authors       = ["Adrian Toman"]
  spec.email         = ["adrian.toman@gooddata.com"]
  spec.summary       = "Gem used for connection to Password Manager Pro Rest Api"
  spec.description   = "This gem can be  used to connect to new Password manager api"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "httparty"
end
