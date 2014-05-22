# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = "visupedia"
  gem.version     = "0.0.1"
  gem.description = "Official Visupedia API library client for ruby"
  gem.summary     = "Official Visupedia API library client for ruby"

  gem.author   = "Gaël Gillard"
  gem.email    = "dev@visupedia.net"
  gem.homepage = "http://visupedia.net"
  gem.license  = "MIT"

  gem.require_paths = ['lib']

  gem.files = Dir["lib/**/*"]

  gem.add_dependency "faraday", "~> 0.8.8"
  gem.add_dependency "json", "~> 1.7.7"
end
