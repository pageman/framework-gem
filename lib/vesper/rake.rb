class Vesper::Rake  
  Dir["./plugins/**/tasks/*"].each {|file| require file}
  Dir["./tasks/**/*"].each {|file| require file}
end