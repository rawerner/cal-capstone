require 'cal'
require_relative 'helper'

class TestCalIntegration < MiniTest::Unit::TestCase

  def test_month_has_6_weeks
    shell_output = `ruby cal.rb 09 2012`
    expected_output = <<EOS
   September 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
    assert_equal shell_output, expected_output
  end

  def test_month_has_4_weeks
    shell_output = "ruby cal.rb 02 2015"
    expected_output = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
EOS
    assert_equal shell_output, expected_output
  end

end