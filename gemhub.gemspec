# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gemhub}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Diego Carrion"]
  s.date = %q{2010-04-23}
  s.default_executable = %q{gemhub}
  s.description = %q{Create your gems in a spartan way!}
  s.email = %q{dc.rec1@gmail.com}
  s.executables = ["gemhub"]
  s.files = ["app_generators/gemhub", "app_generators/gemhub/gemhub_generator.rb", "app_generators/gemhub/templates", "app_generators/gemhub/templates/lib", "app_generators/gemhub/templates/lib/template.rb.erb", "app_generators/gemhub/templates/spec", "app_generators/gemhub/templates/spec/template_spec.rb.erb", "app_generators/gemhub/templates/tasks", "app_generators/gemhub/templates/tasks/cucumber.rake.erb", "app_generators/gemhub/templates/README.textile", "app_generators/gemhub/templates/Rakefile.erb", "bin/gemhub", "lib/gemhub.rb", "Rakefile", "README.textile"]
  s.homepage = %q{http://www.diegocarrion.com}
  s.require_paths = ["app_generators", "bin", "lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Simple gem creation}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubigen>, [">= 1.3.4"])
    else
      s.add_dependency(%q<rubigen>, [">= 1.3.4"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 1.3.4"])
  end
end
