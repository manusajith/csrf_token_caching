# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csrf_token_caching/version'

Gem::Specification.new do |spec|
  spec.name          = "csrf_token_caching"
  spec.version       = CsrfTokenCaching::VERSION
  spec.authors       = ["Manu S Ajith"]
  spec.email         = ["neo@codingarena.in"]
  spec.description   = %q{Gem to handle CSRF protection token while using caching}
  spec.summary       = %q{This gem will easily allow the users to use caching with CSRF tokens, it will insert a user specific token in the HTML pages for each response that is sent.}
  spec.homepage      = "https://github.com/manusajith/csrf_token_caching"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
