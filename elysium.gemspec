$:.push File.expand_path('../lib', __FILE__)
require 'elysium/version'

Gem::Specification.new do |spec|
  spec.name        = 'elysium'
  spec.version     = Elysium::VERSION
  spec.authors     = ['Krzysztof Wawer']
  spec.email       = ['krzysztof.wawer@gmail.com']
  spec.homepage    = 'http://github.com/wafcio/elysium'
  spec.summary     = 'Rails 4 Editable Template Engine'
  spec.description = 'Elysium is a powerful Rails 4 Editable Template Engine'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '4.0.4'
  spec.add_dependency 'carrierwave', '0.10.0'
  spec.add_dependency 'mimemagic', '0.2.1'
  spec.add_dependency 'mini_magick', '3.7.0'

  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'rails-dummy', '0.0.3'
  spec.add_development_dependency 'rspec-rails', '2.14.2'
  spec.add_development_dependency 'factory_girl_rails', '4.4.1'
end
