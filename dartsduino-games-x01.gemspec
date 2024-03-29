# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dartsduino/games/x01/version'

Gem::Specification.new do |spec|
  spec.name          = "dartsduino-games-x01"
  spec.version       = Dartsduino::Games::X01::VERSION
  spec.authors       = ["Ikuo Terado"]
  spec.email         = ["eqobar@gmail.com"]
  spec.summary       = %q{dartsduino games: X01 (301/501/701).}
  spec.description   = %q{dartsduino games: X01 (301/501/701).}
  spec.homepage      = ""
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
