Gem::Specification.new do |spec|
  
  spec.name = %q{annotation}
  spec.version = "0.1"
  
  spec.authors = ["Ed Sumerfield"]
  spec.email = "annotation@bitbashers.org"

  spec.files = ["annotation.rb", "annotation_spec.rb", "README", "Rakefile", "Gemfile"]

  spec.homepage = %q{http://github.com/esumerfd/Annotation}
  spec.rubyforge_project

  spec.require_paths = ["lib"]
  spec.rubygems_version = %q{1.3.6}
  spec.summary = %q{Annotation support for ruby methods}
  spec.description = %q{In the same way you used to annotate methods in Java keeping the changes local to the method
that is being changed, this gem allows you to do that same. An example would be adding the rails controller before_filter
to the method that is is related to.}
  spec.post_install_message = %q{Thank you for trying out Annotation. Let me know if you like it esumerfd [at] bitbashers.org}
end
