# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/select/wrapper/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-select-wrapper-rails"
  spec.version       = Bootstrap::Select::Wrapper::Rails::VERSION
  spec.authors       = ["Christian Dobert"]
  spec.email         = ["chr.dobert@gmail.com"]
  spec.summary       = %q{A simple wrapper around the bootstrap-select plugin}
  spec.description   = %q{A wrapper around the bootstrap-select plugin. See: http://silviomoreto.github.io/bootstrap-select/}
  spec.homepage      = "https://github.com/dondope/bootstrap-select-wrapper-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
