Gem::Specification.new do |s|
  
  s.name = %q{annotation}
  s.version = "0.1"
  
  s.authors = ["Ed Sumerfield"]
  s.date = %q{2010-10-04}
  s.email = %q{judofyr@gmail.com}

  s.files = ["annotation.rb", "annotation_spec.rb", "README", "Rakefile", "Gemfile"]

  s.homepage = %q{http://github.com/esumerfd/Annotation}

  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Annotation support for ruby methods}
  s.description = %q{In the same way you used to annotate methods in Java keeping the changes local to the method
that is being changed, this gem allows you to do that same. An example would be adding the rails controller before_filter
to the method that is is related to.}
  s.post_install_message = %q{Thank you for trying out Annotation. Let me know if you like it esumerfd [at] bitbashers.org}
end
