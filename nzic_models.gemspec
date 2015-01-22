$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nzic_models/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nzic_models"
  s.version     = NZICModels::VERSION
  s.authors     = ["Ronald Chan"]
  s.email       = ["ronalchn@gmail.com"]
  s.homepage    = "http://github.com/NZOI/NZIC_models"
  s.summary     = "Summary of NZIC."
  s.description = "Description of NZIC."

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
end
