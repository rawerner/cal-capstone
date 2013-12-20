class Zellers

  def self.calc month, year
    month = month.to_i
    year = year.to_i
    day = 1
    week_days = {
      0 => "Saturday",
      1 => "Sunday",
      2 => "Monday",
      3 => "Tuesday",
      4 => "Wednesday",
      5 => "Thursday",
      6 => "Friday"
    }

    day_of_week_key = (day + (26*(month + 1)/10) + year + (year/4) + 6*(year/100) + (year/400) ) %7

    first_day_of_month = day_of_week_key
  end

end
