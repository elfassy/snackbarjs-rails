# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snackbarjs-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "snackbarjs-rails"
  spec.version       = Snackbarjs::Rails::VERSION
  spec.authors       = ["Michael Elfassy"]
  spec.email         = ["michaelelfassy@gmail.com"]
  spec.summary       = %q{Snackbar is a javascript library for alerts. This gem integrates Snackbar.js with Rails asset pipeline for easy of use.}
  spec.description   = %q{Integrate Snackbar javascript library with Rails asset pipeline}
  spec.homepage      = "https://github.com/elfassy/snackbarjs-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"  

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rails', '>= 3.0'
end
