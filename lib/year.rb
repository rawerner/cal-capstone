require_relative 'month'


class Year
attr_reader = :year

  def initialize year
    raise RangeError if year > 3000 || year < 1800
    @year = year
  end


  def display_year
    @months = []

    @name_of_month = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    puts (" #{@year}").center(60)


    (1..12).each do |num|
      current_month = Month.new(num, @year)
      @months << current_month.weeks
    end

    mon = []
    @months.each_slice(3) do |quarters|
      (0..8).each do |num|
        row = [quarters[0][num], quarters[1][num], quarters[2][num]]
        mon << row.join
      end
    end
    puts mon
  end
end
