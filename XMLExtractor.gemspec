# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'extractor/version'

Gem::Specification.new do |spec|
  spec.name          = 'XMLExtractor'
  spec.version       = Extractor::VERSION
  spec.authors       = ['Autodesk']
  spec.email         = ['bim.360.circinus.eng@autodesk.com']
  spec.summary       = %q{XMLExtractor}
  spec.description   = %q{Parse landXML into sqlite script.}
  spec.homepage      = 'https://github.com/tonnyskk/XMLExtractor'

  spec.files         = Dir['{lib}/**/*'] + ['README.md']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
