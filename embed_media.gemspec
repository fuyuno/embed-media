# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'embed_media/version'

Gem::Specification.new do |spec|
  spec.name          = "embed_media"
  spec.version       = EmbedMedia::VERSION
  spec.authors       = ["Mikazuki Fuyuno"]
  spec.email         = ["mikazuki_fuyuno@outlook.com"]

  spec.summary       = %q{Embedded Medias as YouTube, Vimeo and Niconico from URL.}
  spec.description   = %q{Embedded Medias as YouTube, Vimeo and Niconico from URL.}
  spec.homepage      = "https://github.com/fuyuno/embed-media"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
