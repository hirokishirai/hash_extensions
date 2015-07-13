# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_extensions"
  spec.version       = HashExtensions::VERSION
  spec.authors       = ["hirokishirai"]
  spec.email         = ["shiraihiroki.jp@gmail.com"]

  spec.summary       = %q{hash_extensions extends convenient and useful methods to standard Hash class.}
  spec.description   = %q{hash_extensions extends convenient and useful methods to standard Hash class. For example, you can swap Hash elements by specifying two Hash indices.}
  spec.homepage      = "https://github.com/hirokishirai/hash_extensions"
  spec.license       = "MIT"

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
end
