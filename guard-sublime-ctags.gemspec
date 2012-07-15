# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard-sublime-ctags/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sunteya"]
  gem.email         = ["Sunteya@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guard-sublime-ctags"
  gem.require_paths = ["lib"]
  gem.version       = Guard::Sublime::Ctags::VERSION
end
