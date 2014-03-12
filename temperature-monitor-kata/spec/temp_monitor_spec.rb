require 'rspec/core'
require 'temp_monitor'

describe TempMonitor do
  before do
    @tm = TempMonitor.new
    @tm.read_data("../weather_data.txt")
  end
  it "reads a file into an array" do
    expect(@tm.data.length).not_to eq(0)
    expect(@tm.data.is_a? Array).to eq true
  end
  it "finds the temperature spread for one day" do
    @tm.calculate_spread
    expect(@tm.temp_spread(1)).to eq 29
  end
  it "compares which of 2 days has the smallest temperature spread" do
    @tm.calculate_spread
    expectation = 2
    expect(@tm.smaller_spread(2,3)). to equal expectation
  end
  it "tells me what is the smallest temperature spread witht the associated day"
end