# frozen_string_literal: true

module ListOfCountries
  class Demonyms
    attr_reader :female
    attr_reader :male

    def initialize(data)
      eng = data.fetch("eng")
      @female = eng.fetch("f")
      @male = eng.fetch("m")
    end
  end
end
