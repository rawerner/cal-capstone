require 'year'
require_relative 'helper'

class TestYearClass < MiniTest::Unit::TestCase

  def test_create_new_year_works
    year = Year.new(2012)
    exists = year.instance_of? Year
    assert_equal(true, exists)
  end

  def test_year_range_bottom
    assert_raises RangeError do
      year = Year.new(1598)
    end
  end

  def test_year_range_top
    assert_raises RangeError do
      year = Year.new(3007)
    end
  end


end
