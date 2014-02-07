# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zeusd/version'

Gem::Specification.new do |spec|
  spec.name          = "zeusd"
  spec.version       = Zeusd::VERSION
  spec.authors       = ["Daniel Doezema"]
  spec.email         = ["daniel.doezema@gmail.com"]
  spec.description   = "Run the Zeus gem as a daemon."
  spec.summary       = "Run the Zeus gem as a daemon."
  spec.homepage      = "https://github.com/veloper/zeusd"
  spec.license       = "New BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "childprocess"
  spec.add_runtime_dependency "zeus"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
