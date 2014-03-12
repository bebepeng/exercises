class TempMonitor
  attr_reader :data
  attr_reader :data_spread

  def initialize (file)
    @data = File.open(file).read
    @data = @data.lines
    @data = @data.slice(8..-3)
    @data.map! do |day|
      day.split(" ")
    end
    @data_spread = Hash.new
    @data.each do |i|
      @data_spread[i[0].to_i] = i[1].to_i - i[2].to_i
    end
  end

  def smaller_spread(num1, num2)
    case
      when data_spread[num1] < data_spread[num2]
        num1
      when data_spread[num1] > data_spread[num2]
        num2
      when data_spread[num1] == data_spread[num2]
        "equal"
    end
  end

  def smallest_spread
    sorted = @data_spread.sort_by { |key, value| value }
    "The Smallest: Day #{sorted.first[0]} has a temp spread of #{sorted.first[1]}"
  end
end