Gem::Specification.new do |s|
  s.name          = 'r4nass'
  s.version       = '0.0.0'
  s.date          = '2015-03-28'
  s.description   = %q{Ruby wrapper for the USDA National Agricultural Statistics Service}
  s.summary       = %q{Ruby wrapper for the USDA National Agricultural Statistics Service}
  s.files         = Dir['lib/*.rb'] + Dir['lib/r4nass/*.rb']
  s.test_files    = Dir['test/*.rb']
  s.authors       = ["John Murphy"]
  s.email         = ["murphybytes@gmail.com"]
  s.require_paths = ['lib']
end
