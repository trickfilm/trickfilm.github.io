# encoding: UTF-8

Gem::Specification.new do |s|
  s.name        = 'progress'
  s.version     = '3.4.0'
  s.summary     = %q{Show progress of long running tasks}
  s.homepage    = "http://github.com/toy/#{s.name}"
  s.authors     = ['Ivan Kuchin']
  s.license     = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.rubyforge_project = s.name

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.add_development_dependency 'rspec', '~> 3.0'
  if RUBY_VERSION >= '2.0'
    s.add_development_dependency 'rubocop', '~> 0.27'
  end
end
