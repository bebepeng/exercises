class TempMonitor
  attr_reader :data
  def initalize
    @data = nil
  end

  def read_data(file)
    @data = File.open("weather_data.txt").read
    @data = @data.each_line.to_a
  end
end