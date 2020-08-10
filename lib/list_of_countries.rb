# frozen_string_literal: true

require "json"
require "list_of_countries/city"
require "list_of_countries/country"
require "list_of_countries/state"
require "list_of_countries/version"

module ListOfCountries
  def self.countries
    @countries ||= begin
      path = File.expand_path("../../data/countries/countries.json", __FILE__)
      file = File.open(path, "r")
      JSON.load(file).map do |data|
        Country.new(data)
      end.freeze
    end
  end

  def self.states
    @states ||= begin
      path = File.expand_path("../../data/countries_states_cities_database/states.json", __FILE__)
      file = File.open(path, "r")
      JSON.load(file).map do |data|
        State.new(data)
      end.freeze
    end
  end

  def self.cities
    @cities ||= begin
      path = File.expand_path("../../data/countries_states_cities_database/cities.json", __FILE__)
      file = File.open(path, "r")
      JSON.load(file).map do |data|
        City.new(data)
      end.freeze
    end
  end
end
