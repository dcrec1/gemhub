require 'rbconfig'
require "pp"

class GemhubGenerator < RubiGen::Base

  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])

  default_options :cucumber_tasks => false

  attr_reader :name, :module_name, :aditional_tasks

  def initialize(runtime_args, runtime_options = {})
    super(runtime_args, runtime_options)

    usage if args.empty?
    @destination_root = File.expand_path(args.shift)
    @name = base_name
    @module_name = base_name.split(/_+/).each{ |word| word.capitalize! }.join('')

    @cucumber_tasks = options[:cucumber_tasks]
    @aditional_tasks = @cucumber_tasks
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory ''
      BASEDIRS.each { |path| m.directory path }

      # Create stubs
      # m.template "template.rb", "some_file_after_erb.rb"
      m.template "lib/template.rb.erb", "lib/#{name}.rb"
      m.template "spec/template_spec.rb.erb", "spec/#{name}_spec.rb"
      if @cucumber_tasks
        m.directory "tasks"
        m.template "tasks/cucumber.rake.erb", "tasks/cucumber.rake", :assigns => {:aditional_tasks => @aditional_tasks}
      end

      m.file "README.textile", "README.textile"
      m.file "Gemfile", "Gemfile"
      m.file "Rakefile", "Rakefile"
    end
  end

  protected
    def banner
      <<-EOS
Creates a simple RubyGems scaffold.

USAGE: #{spec.name} name [options]"
EOS
    end

    def add_options!(opts)
      opts.separator ''
      opts.separator "#{File.basename $0} options:"

      opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
      opts.on("-C", "--cucumber-tasks", "Add tasks: rake cucumber and rake cucumber:wip") { |value| options[:cucumber_tasks] = value }
    end

    # Installation skeleton. Intermediate directories are automatically
    # created so don't sweat their absence here.
    BASEDIRS = %w(lib spec)
end
