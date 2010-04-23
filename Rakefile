require 'rake'
require 'rake/gempackagetask'
 
GEM = "gemhub"
GEM_VERSION = "0.5.1"
SUMMARY = "Simple gem creation"
DESCRIPTION = "Create your gems in a spartan way!"
AUTHOR = "Diego Carrion"
EMAIL = "dc.rec1@gmail.com"
HOMEPAGE = "http://www.diegocarrion.com"
 
spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = SUMMARY
  s.description = DESCRIPTION
  s.require_paths = ['app_generators', 'bin', 'lib']
  s.files = FileList['app_generators/**/*', 'bin/*', 'lib/**/*.rb', '[A-Z]*'].to_a
  s.executables = ["gemhub"]
  
  s.add_dependency(%q<rubigen>, [">= 1.3.4"])
  
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
 
desc "Install the gem locally"
task :install => [:package] do
  sh %{gem install pkg/#{GEM}-#{GEM_VERSION}}
end
 
desc "Create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end

begin
  require 'spec/rake/spectask'
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = %w(-fs --color)
  end
rescue LoadError => ex
  desc 'rspec rake task not available (rspec not installed)'
  task :spec do
    abort 'RSpec rake task is not available. Be sure to install rspec as a gem.'
  end
end
