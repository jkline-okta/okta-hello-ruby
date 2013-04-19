require File.join([File.dirname(__FILE__),'lib','okta','hello','version.rb'])

Gem::Specification.new do |spec|
  spec.name = 'okta_hello'
  spec.version = Okta::Hello::VERSION::STRING

  spec.author = 'jkline-okta'
  spec.email = spec.author . '@example.com'
  spec.summary = 'A simple hello world program wrapped in a gem'

  # Docs later
  # spec.rdoc_options = ['--main', 'README.txt', '--title', '']
  # spec.extra_rdoc_files = ['README.txt']
  spec.required_ruby_version = '>= 1.9.2'
  spec.require_path = 'lib'
end
