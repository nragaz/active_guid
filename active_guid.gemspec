Gem::Specification.new do |s|
  s.name = "active_guid"
  s.summary = "Add a GUID to Active Record instances."
  s.description = "Add a GUID to Active Record instances."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = "0.0.1"
  s.authors = ["Nick Ragaz"]
  s.email = "nick.ragaz@gmail.com"
  s.homepage = "http://github.com/nragaz/active_guid"
  
  s.add_dependency 'uuidtools', '~> 2.1'
  s.add_dependency 'activerecord', '~> 3'
  s.add_development_dependency 'sqlite3'
end
