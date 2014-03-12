require 'rspec/core'
require 'temp_monitor'

describe TempMonitor do
  it "reads a file into an array" do
    tm = TempMonitor.new
    tm.read_data("../weather_data.txt")
    expect(tm.data.length).not_to eq(0)
    expect(tm.data.is_a? Array).to eq true
  end
  it "finds the difference between highs and lows for one day"
  it "compares the differences of different days"
  it "tells me what is the smallest temperature spread witht the associated day"
end