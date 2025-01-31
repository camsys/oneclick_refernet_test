$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "oneclick_refernet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "oneclick_refernet"
  s.version     = OneclickRefernet::VERSION
  s.authors     = ["Derek Edwards", "Nicolas Garcia"]
  s.email       = ["dedwards8@gmail.com", "nicolas.o.garcia@gmail.com"]
  s.homepage    = "http://occ-lynx-prod.herokuapp.com"
  s.summary     = "Connect Oneclick-Core with ReferNET API."
  s.description = "Adapter between Oneclick-Core and ReferNET"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 5.0.3", "< 7"
  
  # Geospatial
  s.add_dependency 'pg'
  s.add_dependency "rgeo"
  s.add_dependency 'activerecord-postgis-adapter'

  # API/Serialization
  s.add_dependency 'active_model_serializers'
  
  # Testing
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rails-controller-testing'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails'

  # s.add_development_dependency "sqlite3"
end
