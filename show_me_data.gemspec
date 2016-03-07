# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'show_me_data/version'

Gem::Specification.new do |spec|
  spec.name          = 'show_me_data'
  spec.version       = ShowMeData::VERSION
  spec.authors       = ['Belle Francisco']
  spec.email         = ['b3ll3.18@gmail.com']

  spec.summary       = %q{Generic API wrapper for oauth2.}
  spec.description   = %q{API wrapper for oauth2.}
  spec.homepage      = ""
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'json'
  spec.add_dependency 'oauth2'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
end
