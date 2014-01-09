require_relative 'month'

class Year
attr_reader = :year

  def initialize year
    @year = year

  end


  def display_year
    @months = []

    name_of_month = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    puts (" #{@year}").center(64)


    (1..12).each do |num|
      current_month = Month.new(num, @year)
      # month_details = []
      # month_details << name_of_month[num]
      # month_details << current_month.weeks
      @months << current_month.weeks
    end
    quarter = []
    mon = []
    (0..2).each do |num|
      name = name_of_month[num].center(20)
      quarter << name
      # (0..4).each do |i|
      #   month1 = @months[i][i]
      #   month2 = @months[i + 1][1]
      #   month3 = @month
      #   mon << row
      # end
    end

    @months.each_slice(3) do |quarters|
      (0..7).each do |num|
        row = [quarters[0][num], quarters[1][num], quarters[2][num]]
        mon << row.join
      end
    end
    quarter =  quarter.join("  ")
    puts quarter
    puts mon
    # puts row

  end

















    #   (0..3).each do |num|
    #     names = name_of_month.shift(num)
    #     puts names
        # .center(20) + " " + names[1].center(20) + " " names[2].center(20) + " "

    # def format_months
    #   name_of_month = ["January","February","March","April","May","June",
    #   "July","August","September","October","November","December"]

    #   @months = []
    #   (1..12).each do |num|
    #     current_month = Month.new(@month, @year)
    #     @months[num] = [name_of_month[0], current_month.weeks]
    #   end
    # end


        # blocksofthree = @months[num * 3, 3][0]
        # blocksofthree + "  " if blocksofthree == 3
        # blocksofthree.join(" ")
        # names.join(" ")
        # puts printed_names
        # puts blocksofthree[0]





    # rows = []
    # (0..2).each do |num|
    #   blocks = @months[num * 3, 3]

    #   blocks + "   " if blocks == 3
    #   rows << blocks.join("  ") if blocks
    # end

    # puts rows


end







 # (1..12).each do |num|
    #   month = num
    #   current_month = Month.new(month, @year)
    #   @months = []
    #   @months << current_month.display_month
    # end
    # rows = []
    # (0..2).each do |num|
    #   blocks = @months[num * 3, 3]
    #   blocks + "   " if blocks == 3
    #   rows << blocks.join("  ") if blocks
    # end
    # puts rows