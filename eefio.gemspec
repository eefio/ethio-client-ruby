lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eefio/version"

Gem::Specification.new do |spec|
  spec.name          = "eefio"
  spec.version       = Eefio::VERSION
  spec.authors       = ["Shane Becker"]
  spec.email         = ["veganstraightedge@gmail.com"]

  spec.summary       = %q{Client library for the Eefio API}
  spec.description   = %q{Client library for the Eefio API}
  spec.homepage      = "https://eefio.com"
  spec.license       = "CC0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.post_install_message = %q{

This gem got renamed to Eefio. Install that with:

    gem install eefio

}
end
