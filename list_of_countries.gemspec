require_relative 'lib/list_of_countries/version'

Gem::Specification.new do |spec|
  spec.name          = "list_of_countries"
  spec.version       = ListOfCountries::VERSION
  spec.authors       = ["Tate Johnson"]
  spec.email         = ["tate@tatey.com"]

  spec.summary       = %q{List of countries}
  spec.description   = %q{List of countries}
  spec.homepage      = "https://github.com/tatey/list_of_countries"
  spec.license       = "ODbL"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|data)/}) }
  end
  spec.files << "data/countries/countries.json"
  spec.files << "data/countries_states_cities_database/cities.json"
  spec.files << "data/countries_states_cities_database/states.json"
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
