require_relative 'month'


class Year
  attr_reader = :year

  def initialize year
    raise RangeError if year < 1800 || year > 3000
    @year = year
  end


  def display_year
    @months = []

    puts ("#{@year}").center(60).rstrip


    (1..12).each do |num|
      current_month = Month.new(num, @year)
      @months << current_month.weeks
    end

    year_array = []
    @months.each_slice(3) do |quarters|
      if quarters[0][0] == "October".center(20) + "  "
        (0..7).each do |num|
          row = [quarters[0][num], quarters[1][num], quarters[2][num]]
          year_array << row.join if row
        end
      else
        (0..8).each do |num|
          row = [quarters[0][num], quarters[1][num], quarters[2][num]]
          year_array << row.join if row
        end
      end
    end
    puts year_array

  end
end
