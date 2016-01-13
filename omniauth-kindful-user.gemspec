# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-kindful-user/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-kindful-user"
  s.version     = Omniauth::KindfulUser::VERSION
  s.authors     = ["pbrumm"]
  s.email       = ["pete@kindful.com"]
  s.homepage    = "https://github.com/kindful/omniauth-kindful-user"
  s.summary     = %q{OmniAuth strategy for Kindful User.}
  s.description = %q{OmniAuth strategy for Kindful User.}
  s.license     = 'MIT'
  post_install_string =<<END
Remember to specify 
    client_options: {site: "https://example-client.kindful.com}
with the correct subdomain for the client your working with
END
  s.post_install_message = post_install_string

  s.rubyforge_project = "omniauth-kindful-user"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'omniauth', '~> 1.2'
  s.add_dependency 'omniauth-oauth2', '~> 1.2'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.13.0'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
#  s.add_development_dependency 'debugger'

end
