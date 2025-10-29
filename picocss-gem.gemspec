# frozen_string_literal: true

require_relative "lib/picocss/version"

Gem::Specification.new do |spec|
  spec.name          = "picocss-gem"
  spec.version       = Picocss::VERSION
  spec.authors       = ["douglas-vitoriano"]
  spec.email         = ["dvitoriano89@gmail.com"]
  spec.summary       = "PicoCSS for Ruby frameworks"
  spec.description   = "Easily use PicoCSS with Rails, Bridgetown, and Sinatra"
  spec.homepage      = "https://github.com/douglas-vitoriano/picocss-gem"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.files         = Dir["lib/**/*", "vendor/assets/**/*", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0", "< 9.0"
  spec.add_dependency "bridgetown", ">= 1.0", "< 3.0"
  spec.add_dependency "sinatra", ">= 3.0", "< 5.0"
end
