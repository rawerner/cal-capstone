class Zellers

  def self.calculate month, year
    month = month.to_i
    year = year.to_i
    day = 1

    if month == 1 || month == 2
       mo = month + 12
       yr = year - 1
    end

    first_day_of_month = (day + (((month + 1)*26)/10) + year + (year/4) + (year/100)*6 + (year/400)) % 7

    first_day_of_month

  end

end
