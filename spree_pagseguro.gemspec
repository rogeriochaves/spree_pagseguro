Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_pagseguro'
  s.version     = '0.0.6'
  s.summary     = 'Adds PagSeguro as a Payment Method to Spree store'
  s.homepage    = ''
  s.author      = 'Stefano Diem benatti'
  s.email       = 'stefano@heavenstudio.com.br'
  s.required_ruby_version = '>= 1.8.7'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]  
  s.has_rdoc      = false

  s.add_dependency('spree_core', '>=0.40.3')
  s.add_dependency('haml')
end
