$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "openopus/core/authentications/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "openopus-core-authentications"
  spec.version     = Openopus::Core::Authentications::VERSION
  spec.authors     = ["Brian J. Fox"]
  spec.email       = ["bfox@opuslogica.com"]
  spec.homepage    = "https://github.com/opuslogica/openopus-core-authentications"
  spec.summary     = "Pain-free authentication methods for any type of login."
  spec.description = "A perfect companion to openopus-core-people, this engine adds authentication to your User class, allowing people to authenticate via multiple methods.  Just turn methods on and off in the configuration."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency "devise", ">= 4.3.0"
end
