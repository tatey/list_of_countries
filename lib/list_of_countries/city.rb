# frozen_string_literal: true

module ListOfCountries
  class City
    attr_reader :name

    def initialize(data)
      @name = data.fetch("name")
    end
  end
end
