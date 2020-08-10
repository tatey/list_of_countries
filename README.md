# List Of Countries ![Ruby](https://github.com/tatey/list_of_countries/workflows/Ruby/badge.svg) [![Gem Version](https://badge.fury.io/rb/list_of_countries.svg)](https://badge.fury.io/rb/list_of_countries)

A list of countries, states, and cities in Ruby. Based on data from:

- [World countries in JSON, CSV, XML and Yaml](https://github.com/mledoze/countries)
- [Countries States Cities Database](https://github.com/dr5hn/countries-states-cities-database)

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'list_of_countries'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install list_of_countries

## Usage

How many countries are there?

``` ruby
countries = ListOfCountries.countries
countries.size # => 250
```

What's the first country?

``` ruby
aruba = countries.first
aruba.name.common     # => "Aruba"
aruba.name.official   # => "Aruba"
aruba.languages       # => ["Dutch", "Papiamento"]
aruba.region          # => "Americas"
aruba.subregion       # => "Caribbean"
aruba.demonyms.female # => "Aruban"
aruba.demonyms.male   # => "Aruban"
```

How many states are there?

``` ruby
states = ListOfCountries.states
states.size # => 4868
```

What's the first state?

``` ruby
state = states.first
state.name # => "Badakhshan"
state.code # => "BDS"
```

How many cities are there?

``` ruby
cities = ListOfCountries.cities
cities.size # => 143852
```

What's the first city?

``` ruby
city = cities.first
city.name # => "Ashkāsham"
```

## Development

This project uses Git Submodules. Use the `--recursive-submodules` flag when cloning the repository.

    $ git clone --recursive-submodules git@github.com:tatey/list_of_countries.git

After cloning out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tatey/list_of_countries. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tatey/list_of_countries/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT license](https://github.com/tatey/list_of_countries/blob/master/LICENSE.txt). Data is under the terms of their individual submodule.

## Code of Conduct

Everyone interacting in the List of Countries project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/list_of_countries/blob/master/CODE_OF_CONDUCT.md).
