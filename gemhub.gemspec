# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gemhub}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Diego Carrion"]
  s.date = %q{2008-10-23}
  s.default_executable = %q{gemhub}
  s.email = %q{dc.rec1@gmail.com}
  s.executables = ["gemhub"]
  s.files = ["app_generators/gemhub", "app_generators/gemhub/gemhub_generator.rb", "app_generators/gemhub/templates", "app_generators/gemhub/templates/README.textile", "app_generators/gemhub/templates/Rakefile.erb", "app_generators/gemhub/templates/lib", "app_generators/gemhub/templates/lib/template.rb.erb", "app_generators/gemhub/templates/spec", "app_generators/gemhub/templates/spec/template_spec.rb.erb", "bin/gemhub", "lib/gemhub.rb", "README.textile", "Rakefile"]
  s.homepage = %q{http://www.mouseoverstudio.com/blog/}
  s.require_paths = ["app_generators", "bin", "lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Simple gem creation}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
