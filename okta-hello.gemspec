require File.join([File.dirname(__FILE__),'lib','okta','hello','version'])

Gem::Specification.new do |spec|
  spec.name = 'okta_hello'
  spec.version = Okta::Hello::VERSION::STRING

  spec.author = 'jkline-okta'
  spec.email = spec.author . '@example.com'
  spec.summary = 'A simple hello world program wrapped in a gem'

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
