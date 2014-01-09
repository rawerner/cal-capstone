require_relative '../cal'
require_relative 'helper'

class TestCalIntegration < MiniTest::Unit::TestCase

  def test_month_has_6_weeks
    shell_output = `ruby cal.rb 07 2013`
    expected_output = `cal 7 2013`
    assert_equal expected_output, shell_output
  end

  def test_month_has_4_weeks
    shell_output = `ruby cal.rb 02 2015`
    expected_output = `cal 2 2015`
    assert_equal expected_output, shell_output
  end

  def test_feb_2012_leap_year
    assert_equal(`cal 2 2012`, `ruby cal.rb 2 2012`)
  end

  def test_june_2013
    assert_equal(`cal 6 2013`, `ruby cal.rb 6 2013`)
  end

  def test_non_leap_year_in_1900
    assert_equal(`cal 2 1900`, `ruby cal.rb 2 1900`)
  end

  def test_leap_year_in_2000
    assert_equal(`cal 2 2000`, `ruby cal.rb 2 2000`)
  end

  def test_year_2012
  assert_equal(`cal 2012`, `ruby cal.rb 2012`)
  end

  def test_year_1800
  assert_equal(`cal 1800`, `ruby cal.rb 1800`)
  end

  def test_year_1900
  assert_equal(`cal 1900`, `ruby cal.rb 1900`)
  end

  def test_year_2000
  assert_equal(`cal 2000`, `ruby cal.rb 2000`)
  end

  def test_year_3000
  assert_equal(`cal 3000`, `ruby cal.rb 3000`)
  end

  def test_year_2999
  assert_equal(`cal 2999`, `ruby cal.rb 2999`)
  end

end