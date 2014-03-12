require 'rspec/core'
require 'temp_monitor'

describe TempMonitor do
  before do
    @tm = TempMonitor.new
    @tm.read_data("../weather_data.txt")
    @tm.calculate_spread
  end
  it "reads a file into an array" do
    expect(@tm.data.length).not_to eq(0)
    expect(@tm.data.is_a? Array).to eq true
  end
  it "finds the temperature spread for one day" do
    expect(@tm.data_spread[1]).to eq 29
  end
  it "compares which of 2 days has the smallest temperature spread" do
    expectation = 2
    expect(@tm.smaller_spread(2,3)). to equal expectation
  end
  it "tells me what is the smallest temperature spread and the associated day" do
    expectation = "The Smallest: Day 14 has a temp spread of 2"
    expect(@tm.smallest_spread).to eq expectation
  end
end