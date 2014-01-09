require_relative 'lib/year'
require_relative 'lib/month'


case ARGV.length
when 0
  today = Time.new
  month = today.month.to_i
  year = today.year.to_i
  raise RangeError if year.to_i >= 3000 || year.to_i < 1800
  current_month = Month.new(month, year)
  current_month.display_month_with_year
when 2
  month = ARGV[0].to_i
  year = ARGV[1].to_i
  raise RangeError if year.to_i >= 3000 || year.to_i < 1800
  current_month = Month.new(month, year)
  current_month.display_month_with_year
when 1
  year = ARGV[0].to_i
  raise RangeError if year.to_i >= 3000 || year.to_i < 1800
  current_year = Year.new(year)
  current_year.display_year
else
  raise ArgumentError "Date input formatted incorrectly, [mm, yyyy] or [yyyy]"
end