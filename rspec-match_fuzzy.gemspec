# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'rspec-match_fuzzy'
  spec.version       = '0.1.2'
  spec.authors       = ['winebarrel']
  spec.email         = ['sgwr_dts@yahoo.co.jp']

  spec.summary       = %q{String matcher to ignore whitespace.}
  spec.description   = %q{String matcher to ignore whitespace.}
  spec.homepage      = "https://github.com/winebarrel/rspec-match_fuzzy"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rspec', '>= 3.2'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
