require 'rubygems'
require 'bundler'

Gem::Specification.new do |s|
  s.name        = "rack-failtale"
  s.version     = "0.1.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Sköld"]
  s.email       = ["robert@publicclass.se"]
  s.homepage    = "http://github.com/publicclass/rack-failtale"
  s.summary     = %q{A Rack middleware for Failtale}
  s.description = %q{A Rack middleware for the Failtale service}

  s.required_rubygems_version = ">= 1.3.6"

  s.require_path = 'lib'
  s.files        = Dir.glob("{lib,rails,spec}/**/*") +
                   %w(LICENSE README.md)

  s.add_bundler_dependencies
end