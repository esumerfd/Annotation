require 'rubygems'
require 'rake/gempackagetask'

task :default => [:rspec]

task :rspec do
  sh "rspec *_spec.rb" rescue nil
end

gemspec = eval(File.read("annotation.gemspec"))
desc "Build the RubyGem for Annotation."
task :gem => [ :rspec ]
Rake::GemPackageTask.new(gemspec) do |g|
  g.need_tar    = true
  g.need_zip    = false
  g.package_dir = "pkg"
end
