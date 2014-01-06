class Zellers

  def self.calculate month, year
    month = month.to_i
    year = year.to_i
    day = 1
    if month == 1 || month == 2
      mo = month + 12
      yr = year - 1
    end

    (day + (((mo + 1)*26)/10) + yr + (yr/4) + (yr/100)*6 + (yr/400)) % 7

    # case first_day_of_month
    # when 0
    #   first_day_of_month = "Sa"
    # when 1
    #   first_day_of_month = "Su"
    # when 2
    #   first_day_of_month = "Mo"
    # when 3
    #   first_day_of_month = "Tu"
    # when 4
    #   first_day_of_month = "We"
    # when 5
    #   first_day_of_month = "Th"
    # else
    #   first_day_of_month = "Fr"
    # end


  end

end
