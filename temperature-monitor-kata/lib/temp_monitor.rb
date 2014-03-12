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

  def temp_spread(day)
    i = day - 1
    @data[i][1].to_i - @data[i][2].to_i
  end
end