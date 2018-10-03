# -*- encoding: utf-8 -*-
# stub: starving-artist-jekyll-theme 0.2.7 ruby lib

Gem::Specification.new do |s|
  s.name = "starving-artist-jekyll-theme".freeze
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["chrisanthropic".freeze]
  s.date = "2016-10-26"
  s.email = ["ctarwater@gmail.com".freeze]
  s.homepage = "https://github.com/chrisanthropic/starving-artist-jekyll-theme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "A mobile-friendly Jekyll theme for visual artists with custom layouts for: contact page, about page, blog, and pinterest-style gallery layout.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jekyll>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
