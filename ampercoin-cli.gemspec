# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ampercoin/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "ampercoin-cli"
  spec.version       = Ampercoin::Cli::VERSION
  spec.authors       = ["Mason Fischer"]
  spec.email         = ["mason@thoughbot.com"]
  spec.summary       = %q{A command line interface to the cryptocurrency ampercoin}
  spec.description   = %q{A command line interface to the cryptocurrency ampercoin}
  spec.homepage      = "http://www.github.com/masonforest/ampercoin-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_dependency "activemodel"
  spec.add_dependency "activerecord"
  spec.add_dependency "sqlite3"
  spec.add_dependency "base58"
  spec.add_dependency "table_print"
end
