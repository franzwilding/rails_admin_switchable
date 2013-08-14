$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_switchable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_switchable"
  s.version     = RailsAdminSwitchable::VERSION
  s.authors     = ["Franz Wilding"]
  s.email       = ["franz@2robots.at"]
  s.homepage    = "http://2robots.at"
  s.summary     = "Adds a attribute-switch action"
  s.description = "Adds a attribute-switch action to the root bar. e.g. to switch the current user's group"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"
end
