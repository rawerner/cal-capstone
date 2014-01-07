require 'zellers'
require_relative 'helper'

class TestZellers < MiniTest::Unit::TestCase

  def test_zellers_result
    day = Zellers.calculate("12", "2013")
    assert_equal(1, day)
  end

  def test_zellers_leap_year
    day_1_of_march = Zellers.calculate("3", "2012")
    assert_equal(5, day_1_of_march)
  end

  def test_zellers_starts_on_saturday
    day_1_Jan_2012 = Zellers.calculate("12", "2013")
    assert_equal(1, day_1_Jan_2012)
  end


end
