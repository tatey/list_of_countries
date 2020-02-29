# frozen_string_literal: true

require "list_of_countries/name"
require "list_of_countries/demonyms"

module ListOfCountries
  class Country
    attr_reader :name
    attr_reader :demonyms
    attr_reader :languages
    attr_reader :region
    attr_reader :subregion

    def initialize(data)
      @name = Name.new(data.fetch("name"))
      @demonyms = Demonyms.new(fetch_demonyms(data))
      @languages = data.fetch("languages").values
      @region = data.fetch("region")
      @subregion = data.fetch("subregion")
    end

    private

    def fetch_demonyms(data)
      demonym = data["demonym"]
      if demonym
        return {
          "eng" => {
            "f" => demonym,
            "m" => demonym,
          },
        }
      end

      demonyms = data["demonyms"]
      if demonyms
        return demonyms
      end

      raise KeyError, %q{keys not found: "demonym" or "demonyms"}
    end
  end
end
