require_relative 'zellers'

class Month
  attr_reader :first_day_of_month, :number_of_days_in_month, :month, :year

  def initialize month, year
    @month = month
    @year = year
    @first_day_of_month = Zellers.calculate(month, year)
    @number_of_days_in_month = calc_days_in_month(month, year)
  end

  def name_of_month
    name_of_month = ["January","February","March","April","May","June",
      "July","August","September","October","November","December"]
    name_of_month[@month - 1] # finds month needed
  end



  def calc_days_in_month month, year
    months_with_30 = [4, 6, 9, 11]
    months_with_31 = [1, 3, 5, 7, 8, 10, 12]
    if months_with_30.include? month
      30
    elsif months_with_31.include? month
      31
    elsif (year % 4 ==0 && year % 100 != 0) || year % 400 == 0
      28
    else year % 4 == 0
      28
    end
  end

  def display_first_week
      case @first_day_of_month
    when 0
      day_of_week = "Sa" && week1 = "                   " + "1"
    when 1
      day_of_week = "Su" && week1 = " " + "1"
    when 2
      day_of_week = "Mo" && week1 = "    " + "1"
    when 3
      day_of_week = "Tu" && week1 = "       " + "1"
    when 4
      day_of_week = "We" && week1 = "          " + "1"
    when 5
      day_of_week = "Th" && week1 = "             " + "1"
    else
      day_of_week = "Fr" && week1 = "                " + "1"
    end
  end

  def apply_spaces_to_days
    days = (2..@number_of_days_in_month).to_a
    days.map! do |d|
      d < 10 ? " " + d.to_string : d.to_s
    end
    days
  end

  def display_month
    puts (name_of_month + " #{@year}").center(20).rstrip
    puts "Su Mo Tu We Th Fr Sa"
  end

end
