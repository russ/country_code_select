# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "country_code_select/version"

Gem::Specification.new do |s|
  s.name = "country_code_select"
  s.version = CountryCodeSelect::VERSION
  s.authors = ["Russ Smith (russ@bashme.org)"]
  s.email = "russ@bashme.org"
  s.homepage = "http://github.com/russ/country_code_select"
  s.summary = "A simple country code select helper. Works exactly the same as country_select but uses country codes instead."
  s.description = "A simple country code select helper. Works exactly the same as country_select but uses country codes instead."
  s.rubyforge_project = "country_code_select"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("activesupport", ">= 3.0")
  s.add_development_dependency("rake")
  s.add_development_dependency("rspec", "~> 2.8")
  s.add_development_dependency("rspec-html-matchers")
  s.add_development_dependency("rspec-action_view")
  s.add_development_dependency("yard")
end
