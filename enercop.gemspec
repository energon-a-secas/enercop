require_relative 'lib/enercop/version'

Gem::Specification.new do |spec|
  spec.name          = "enercop"
  spec.version       = Enercop::VERSION
  spec.authors       = ["Ernesto Acevedo"]
  spec.email         = ["ernesto.acevedo@hey.com"]

  spec.summary       = "Custom gem that holds a common rubocop config for Energon®"
  spec.description   = "Custom rubocop rules to share between all Energon® ruby projects"
  spec.homepage      = "https://github.com/energon-a-secas/enercop"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-rspec"
end
