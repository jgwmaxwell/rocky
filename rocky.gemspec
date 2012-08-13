# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rocky/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Maxwell"]
  gem.email         = ["jgwmaxwell@gmail.com"]
  gem.description   = %q{Rocky is a heavyweight Slugger}
  gem.summary       = %q{Like any true champion of the world, Rocky is a heavywight slugging machine!}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rocky"
  gem.require_paths = ["lib"]
  gem.version       = Rocky::VERSION
  
  gem.add_dependency "babosa"
  gem.add_dependency "moped"
end
