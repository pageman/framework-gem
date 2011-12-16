# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vesper/version"

Gem::Specification.new do |s|
  s.name        = "vesper"
  s.version     = Vesper::VERSION
  s.author      = "Jarrod Taylor"
  s.email       = "jarrodtaylor@me.com"
  s.homepage    = "http://jarrodtaylor.github.com/vesper/"
  s.summary     = "A web framework with a focus on transparency; Vesper combines Rack, Sinatra and DataMapper."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.post_install_message = "\nTo create a Vesper app:\n  vesper create <app_name>\n\nSend any questions or comments to jarrodtaylor@me.com\n\n"

  s.add_development_dependency "bundler", "~> 1.0.21"

  s.add_runtime_dependency "bundler", "~> 1.0.21"
  s.add_runtime_dependency "chronic", "~> 0.6.5"
  s.add_runtime_dependency "data_mapper", "~> 1.2.0"
  s.add_runtime_dependency "dm-sqlite-adapter", "~> 1.2.0"
  s.add_runtime_dependency "redcarpet", "~> 2.0.0"
  s.add_runtime_dependency "sinatra", "~> 1.3.1"
  s.add_runtime_dependency "whenever", "~> 0.7.0"
end
