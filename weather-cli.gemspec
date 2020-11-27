require_relative 'lib/weather/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "weather-cli"
  spec.version       = Weather::Cli::VERSION
  spec.authors       = ["Santiago J. Alba"]
  spec.email         = ["santij.alba@gmail.com"]

  spec.summary       = %q{Weather CLI to know the weather of the cities of Barcelona.}
  spec.description   = %q{Weather CLI to know the average of the minimum and maximum temperature during the week,
and the temperature of the day.}
  spec.homepage      = "https://github.com/santialba/weather-cli"
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
end
