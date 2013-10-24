# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib/', __FILE__)

require 'font-awesome-rails/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Mihai Târnovan"]
  gem.email         = ["mihai.tarnovan@cubus.ro"]
  gem.description   = %q{Font Awesome SASS gem for Rails asset pipeline}
  gem.summary       = %q{Font Awesome SASS Rails}
  gem.homepage      = "https://github.com/cubus/font-awesome-rails"

  gem.files         = Dir["{app,config,db,lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir["test/**/*"]
  gem.name          = "font-awesome-rails"
  gem.require_paths = ["lib"]
  gem.version       = FontAwesome::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.0"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

end