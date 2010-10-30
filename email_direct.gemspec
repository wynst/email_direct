# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "email_direct/version"

Gem::Specification.new do |s|
  s.name        = "email_direct"
  s.version     = EmailDirect::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tucker Connelly", "wynst"]
  s.email       = ["l4nc3r@comcast.net", "wynst.uei@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/email_direct"
  s.summary     = %q{Used to connect to the EmailDirect SOAP service.}
  s.description = %q{To use this gem, initialize with your account name and password.  All the SOAP calls (found here: http://dev.emaildirect.com/v1/) are functions of the module with the same function name and parameters (minus the credentials).  This gem depends on the serviceproxy and activesupport gems.}

  s.rubyforge_project = "email_direct"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency "serviceproxy", "~> 0.2.1"
  s.add_dependency "nokogiri", "= 1.4.1"
  s.add_dependency "builder", "~> 2.1.2"
  s.add_dependency "activesupport", "~> 3.0.0"
  s.add_development_dependency "rspec", "~> 2.0.0"
end

