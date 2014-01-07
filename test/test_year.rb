require_relative 'year'
require_relative 'test/helper'

class TestYearClass < MiniTest::Unit::TestCase
  def test_create_new_year_works
    year = Year.new(2012)
  end

  def test_year_range_bottom
    assert_raises RangeError do
      Year.new(1600)
    end

  def test_year_range_top
    assert_raises RangeError do
      Year.new(3001)
    end
  end
  end
end
