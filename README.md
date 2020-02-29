# List Of Countries ![Ruby](https://github.com/tatey/list_of_countries/workflows/Ruby/badge.svg)

A list of countries in Ruby. Based on data from [World countries in JSON, CSV, XML and Yaml](https://github.com/mledoze/countries).

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
countries = ListOfCountries.all
countries.size # => 250
```

What attributes does a country have?

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

## Development

This project uses Git Submodules. Use the `--recursive-submodules` flag when cloning the repository.

    $ git clone --recursive-submodules git@github.com:tatey/list_of_countries.git

After cloning out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tatey/list_of_countries. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tatey/list_of_countries/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [ODbL license](https://github.com/tatey/list_of_countries/blob/master/LICENSE.txt).

## Code of Conduct

Everyone interacting in the List of Countries project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/list_of_countries/blob/master/CODE_OF_CONDUCT.md).
