# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vesper/version"

Gem::Specification.new do |s|
  s.name        = "vesper"
  s.version     = Vesper::VERSION
  s.author      = "Jarrod Taylor"
  s.email       = "jarrodtaylor@me.com"
  s.homepage    = "http://jarrodtaylor.github.com/vesper/"
  s.summary     = "A web framework with a focus on transparency."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
