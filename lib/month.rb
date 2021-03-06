require_relative 'zellers'

class Month
  attr_reader :first_day_of_month, :number_of_days_in_month, :month, :year, :weeks, :name_of_month, :month_names

  WEEKDAYS = "Su Mo Tu We Th Fr Sa"

  def initialize month, year

    @month = month
    @year = year
    @first_day_of_month = Zellers.calculate(month, year)
    @number_of_days_in_month = calc_days_in_month(month, year)
    @month_names = ["January" ,"February" ,"March" ,"April" ,"May" ,"June" ,
                    "July" ,"August" ,"September" ,"October" ,"November" ,"December"]
  end

  def name_of_month
    @month_names[@month - 1] # finds month needed
  end

  # determines the number of days in month. Takes into considertion leap year too.
  def calc_days_in_month month, year
    months_with_30 = [4, 6, 9, 11]
    months_with_31 = [1, 3, 5, 7, 8, 10, 12]
    if months_with_30.include? month
      30
    elsif months_with_31.include? month
      31
    elsif (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
      29
    else
      28
    end
  end

  # makes an array of days in month and adds a space infront of single digits.
  def format_dates
    days = (1..@number_of_days_in_month).to_a
    days.map! do |d|
      d < 10 ? " " + d.to_s : d.to_s
    end
    # adds blank elements to the beginning of the days array to offset the
    # first day of the month
    @first_day_of_month.times do
      blankday = "  "
      days.unshift(blankday)
    end
    days
  end



  # formats year weeks into and array in advace of printing. All spacing & padding is added here.
  def weeks
    rows = []
    rows << name_of_month.center(20) + "  "
    rows << "Su Mo Tu We Th Fr Sa" + "  "
    days = format_dates
    (0..7).each {|num|
      fields = days[num * 7, 7]
      rows << fields.join(" ") + "  " if fields
    }
    if rows.last.length < 22
      rows.last << " " * (22 - rows.last.length)
    end
    until rows.length == 8
      rows << " " * 22
    end
    rows
  end
  # formats single month weeks into and array in advace of printing. All spacing & padding is added here.
  def weeks_with_year
    rows = []
    rows << "Su Mo Tu We Th Fr Sa" + "  "
    days = format_dates
    (0..7).each {|num|
      fields = days[num * 7, 7]
      rows << fields.join(" ") + "  " if fields
    }

    if rows.last.length < 22
      rows.last << " " * (22 - rows.last.length)
    end

    until rows.length == 7
      rows << " " * 22
    end
    rows
  end
  # displays the single month string.
  def display_month_with_year
    puts (name_of_month + " #{@year}").center(20) +"  "
    puts weeks_with_year
  end

end

