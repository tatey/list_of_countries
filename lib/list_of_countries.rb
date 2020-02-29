# frozen_string_literal: true

require "json"
require "list_of_countries/country.rb"
require "list_of_countries/version"

module ListOfCountries
  def self.all
    @all ||= begin
      path = File.expand_path("../../data/countries/countries.json", __FILE__)
      file = File.open(path, "r")
      JSON.load(file).map do |data|
        Country.new(data)
      end.freeze
    end
  end
end
