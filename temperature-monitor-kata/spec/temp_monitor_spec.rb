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
    expect(@tm.temp_spread(1)).to eq 29
  end
  it "compares the differences of different days"
  it "tells me what is the smallest temperature spread witht the associated day"
end