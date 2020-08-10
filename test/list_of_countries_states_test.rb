require "test_helper"

class ListOfCountriesStatesTest < Minitest::Test
  def setup
    @states = ListOfCountries.states
  end

  def test_states
    assert_equal(4868, @states.size)
  end

  def test_first_state
    state = @states.first
    assert_equal("Badakhshan", state.name)
    assert_equal("BDS", state.code)
  end

  def test_last_state
    state = @states.last
    assert_equal("Midlands Province", state.name)
    assert_equal("MI", state.code)
  end
end
