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

  end

end
