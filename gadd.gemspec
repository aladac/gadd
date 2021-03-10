# frozen_string_literal: true

require_relative "lib/gadd/version"

Gem::Specification.new do |spec|
  spec.name          = "gadd"
  spec.version       = Gadd::VERSION
  spec.authors       = ["aladac"]
  spec.email         = ["adam@saiden.pl"]

  spec.summary       = "Github add-hoc commit tool"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/aladac/gadd"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", "~> 13.0"

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.7"
  spec.add_development_dependency "rubocop-rake", "~> 0.5.1"
  spec.add_development_dependency "rubocop-rspec", "~> 2.2"
end
