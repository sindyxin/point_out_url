
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "point_out_url/version"

Gem::Specification.new do |spec|
  spec.name          = "point_out_url"
  spec.version       = PointOutUrl::VERSION
  spec.authors       = ["Sindy"]
  spec.email         = ["sindyxin1@gmail.com"]

  spec.summary       = %q{Specific method to point out url from text and convert url to clickable link for my application.}
  spec.description   = %q{Use liberal Regex for All URLs to test url from text and ruby build in .gsub method to make url clickable and point out.}
  spec.license       = "MIT"


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
end
