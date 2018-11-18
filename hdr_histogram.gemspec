# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hdr_histogram/version'

Gem::Specification.new do |spec|
  spec.name          = 'hdr_histogram'
  spec.version       = HdrHistogram::VERSION
  spec.authors       = ['Jon Ekdahl']
  spec.email         = ['jon.ekdahl@gmail.com']

  spec.summary       = 'A pure ruby port of HdrHistogram'
  spec.homepage      = 'https://github.com/jonekdahl/hdr_histogram'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4'
  spec.add_development_dependency 'rubocop', '~> 0.60.0'
end
