class Vesper::Rake
  
  require 'bundler'
  Bundler.require

  [
    'config',
    'plugins/**/config',
    'plugins/**/application',
    'application'
  ].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

  DataMapper.finalize
  
  Dir["./plugins/**/tasks/*"].each {|file| require file}
  Dir["./tasks/**/*"].each {|file| require file}

end