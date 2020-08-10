require "test_helper"

class ListOfCountriesCitiesTest < Minitest::Test
  def setup
    @cities = ListOfCountries.cities
  end

  def test_cities
    assert_equal(143852, @cities.size)
  end

  def test_first_city
    city = @cities.first
    assert_equal("Ashkāsham", city.name)
  end

  def test_last_city
    city = @cities.last
    assert_equal("Zvishavane District", city.name)
  end
end
