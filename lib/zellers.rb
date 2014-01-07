class Zellers

  def self.calculate month, year
    month = month.to_i
    year = year.to_i
    day = 1

    month, year = month.to_i, year.to_i
    month = 13 if month == 1
    month = 14 if month == 2
    year = year - 1 if month > 12

    first_day_of_month = (day + (((month + 1)*26)/10) + year + (year/4) + (year/100)*6 + (year/400)) % 7

    first_day_of_month

  end

end
