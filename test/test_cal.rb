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

end
