# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vesper/version"

Gem::Specification.new do |s|
  s.name        = "vesper"
  s.version     = Vesper::VERSION
  s.author      = "Jarrod Taylor"
  s.email       = "jarrodtaylor@me.com"
  s.homepage    = "http://vesperapps.com/"
  s.summary     = "A web framework with a focus on transparency; Vesper combines Rack, Sinatra and DataMapper."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.required_ruby_version = ">= 1.9.2"
  
  s.post_install_message = "\nTo see what vesper can do:\n  vesper options\n\nSend any questions or comments to jarrod@vesperapps.com\n\n"

  s.add_runtime_dependency "grit", "~> 2.4.1"
  s.add_runtime_dependency "sinatra", "~> 1.3.1"
end
