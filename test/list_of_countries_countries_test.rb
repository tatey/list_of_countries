require "test_helper"

class ListOfCountriesCountriesTest < Minitest::Test
  def setup
    @countries = ListOfCountries.all
  end

  def test_list_of_countries
    assert_equal(250, @countries.size)
  end

  def test_first_country
    country = @countries.first
    assert_equal("Aruba", country.name.common)
  end

  def test_last_country
    country = @countries.last
    assert_equal("Zimbabwe", country.name.common)
  end

  def test_australia
    country = @countries.find { |c| c.name.common == "Australia" }
    assert_equal("Australia", country.name.common)
    assert_equal("Commonwealth of Australia", country.name.official)
    assert_equal("Australian", country.demonyms.female)
    assert_equal("Australian", country.demonyms.male)
    assert_equal(["English"], country.languages)
    assert_equal("Oceania", country.region)
    assert_equal("Australia and New Zealand", country.subregion)
  end

  def test_hong_kong
    country = @countries.find { |c| c.name.common == "Hong Kong" }
    assert_equal("Hong Kong", country.name.common)
    assert_equal("Hong Kong Special Administrative Region of the People's Republic of China", country.name.official)
    assert_equal("Hong Konger", country.demonyms.female)
    assert_equal("Hong Konger", country.demonyms.male)
    assert_equal(["English", "Chinese"], country.languages)
    assert_equal("Asia", country.region)
    assert_equal("Eastern Asia", country.subregion)
  end
end
