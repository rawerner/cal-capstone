require_relative 'month'

class Year
attr_reader = :year

  def initialize year
    @year = year

  end


  def display_year
     puts (" #{@year}").center(64)
     (1..12).each do |num|
      @month = num
      current_month = Month.new(@month, @year)
      @months = []
      @months << current_month.display_month_without_year
    end
    rows = []
    (0..2).each do |num|
      blocks = @months[num * 3, 3]

      blocks + "   " if blocks == 3
      rows << blocks.join("  ") if blocks
    end

    puts rows

  end
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