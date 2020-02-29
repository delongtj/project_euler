
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "project_euler/version"

Gem::Specification.new do |spec|
  spec.name          = "project_euler"
  spec.version       = ProjectEuler::VERSION
  spec.authors       = ["Ty DeLong"]
  spec.email         = ["delongtj@gmail.com"]

  spec.summary       = %q{ Gem for Project Euler exercises }
  spec.description   = %q{ Contains a class to generate and sum the Fibonacci Sequence defined by 1, 2, 3, 5, 8, 13... }
  spec.homepage      = "https://github.com/delongtj/project-euler"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
