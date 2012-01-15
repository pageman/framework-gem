# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vesper/version"

Gem::Specification.new do |s|
  s.name        = "vesper"
  s.version     = Vesper::VERSION
  s.authors     = ["Jarrod Taylor", "Richard Rissanen"]
  s.email       = "jarrod@vesperapps.com"
  s.homepage    = "http://vesperapps.com/"
  s.summary     = "Vesper is the plug and play Ruby web app framework."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.required_ruby_version = ">= 1.9.3"
  
  s.post_install_message = "\nTo see what vesper can do:\n  vesper messages\n\nSend any questions or comments to jarrod@vesperapps.com\n\n"
  
  s.add_runtime_dependency "bundler", "~> 1.0.21"
  s.add_runtime_dependency "sinatra", "~> 1.3.2"
end