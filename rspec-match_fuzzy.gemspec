# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'rspec-match_fuzzy'
  spec.version       = '0.2.0'
  spec.authors       = ['winebarrel']
  spec.email         = ['sugawara@winebarrel.jp']

  spec.summary       = 'String matcher to ignore whitespace.'
  spec.description   = 'String matcher to ignore whitespace.'
  spec.homepage      = 'https://github.com/winebarrel/rspec-match_fuzzy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rspec', '>= 3.2'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '1.63.2'
  spec.add_development_dependency 'rubocop-rake', '>= 0.5.1'
  spec.add_development_dependency 'rubocop-rspec', '>= 2.1.0'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
