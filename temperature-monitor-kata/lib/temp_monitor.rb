class TempMonitor
  attr_reader :data

  def initalize
    @data = nil
  end

  def read_data(file)
    @data = File.open("weather_data.txt").read
    @data = @data.lines
    @data = @data.slice(8..-3)
    @data.map! do |day|
      day.split(" ")
    end
  end

  def calculate_spread
    @data_spread = Hash.new
    @data.each do |i|
      @data_spread[i[0].to_i] = i[1].to_i - i[2].to_i
    end
  end

  def temp_spread(day)
    @data_spread[day]
  end

  def smaller_spread(num1, num2)
    case
      when temp_spread(num1) < temp_spread(num2)
        num1
      when temp_spread(num1) > temp_spread(num2)
        num2
      when temp_spread(num1) == temp_spread(num2)
        "equal"
    end
  end
end