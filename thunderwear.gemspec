# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thunderwear/version'

Gem::Specification.new do |spec|
  spec.name          = "thunderwear"
  spec.version       = Thunderwear::VERSION
  spec.authors       = ["Ben Ricker"]
  spec.email         = ["BGRicker@gmail.com"]

  spec.summary       = %q{This gem will give you a couple quick weather forecasts based on your zip code}
  spec.description   = %q{Given your zip code and a darkskies API key, you'll be able to get some short term weather info bout your zip code.}
  spec.homepage      = "https://github.com/BGRicker/thunderwear"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["thunderwear"]#spec.files.grep(%r{^/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "forecast_io", "~> 0"
  spec.add_development_dependency "socker", "~> 0"
  spec.add_development_dependency "geocoder", "~> 0"
  spec.add_development_dependency "colorize", "~> 0"
end
