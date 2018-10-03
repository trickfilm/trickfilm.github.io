# -*- encoding: utf-8 -*-
# stub: in_threads 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "in_threads".freeze
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "2017-11-17"
  s.homepage = "http://github.com/toy/in_threads".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "in_threads".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Run all possible enumerable methods in concurrent/parallel threads".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-retry>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.49"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-retry>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.49"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-retry>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49"])
  end
end
