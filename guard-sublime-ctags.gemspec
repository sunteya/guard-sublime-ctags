# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["sunteya"]
  gem.email         = ["sunteya@gmail.com"]
  gem.description   = %q{guard for sublime text ctag plugin}
  gem.summary       = %q{guard for sublime text ctag plugin}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guard-sublime-ctags"
  gem.require_paths = ["lib"]
  gem.version       = File.read(File.expand_path("../VERSION", __FILE__)).chomp
  
  gem.add_dependency "gemtags"
  
  gem.add_development_dependency "rake"
  gem.add_development_dependency "version"
end
