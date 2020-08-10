# frozen_string_literal: true

module ListOfCountries
  class State
    attr_reader :name
    attr_reader :code

    def initialize(data)
      @name = data.fetch("name")
      @code = data.fetch("state_code")
    end
  end
end
