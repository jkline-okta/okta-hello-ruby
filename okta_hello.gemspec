require File.join([File.dirname(__FILE__),'lib','okta','hello','version'])

Gem::Specification.new do |spec|
  spec.name = 'okta_hello'
  spec.version = Okta::Hello::VERSION

  spec.author = 'jkline-okta'
  spec.email = spec.author + '@example.com'
  spec.homepage = 'https://github.com/jkline-okta/okta-hello-ruby'
  spec.summary = 'A simple hello world program wrapped in a gem'
  spec.description = <<-EOF.delete "\n"
    Simple demo of Ruby Gem packaging for a command line script.
  EOF

  candidates = Dir.glob('{bin,lib,test}/**/*') + [__FILE__, 'README.md']
  spec.files = candidates.sort
  
  spec.executables << 'okta-hello'

  # Docs later
  # spec.rdoc_options = ['--main', 'README.txt', '--title', '']
  # spec.extra_rdoc_files = ['README.txt']
  spec.required_ruby_version = '>= 1.9.2'

  # spec.require_path = 'lib' # lib is the default, no need to specify
  # spec.bindir = 'bin' # bin is the default, no need to specify

end
