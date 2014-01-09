require 'month'
require_relative 'helper'

class TestMonth < MiniTest::Unit::TestCase

  def test_month_class_works
    month = Month.new(12, 2013)
    assert_equal(12, month.month)
  end

  def test_month_name_is_correct
    month = Month.new(12, 2013)
    assert_equal("December", month.name_of_month)
  end

  def test_number_of_days_correct
    month = Month.new(12, 2013)
    assert_equal(31, month.calc_days_in_month(12, 2013))
  end


end