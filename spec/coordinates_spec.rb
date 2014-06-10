require 'coordinates_distance_checker'
require 'coordinates'

describe Coordinates do
  it 'has one position' do
    expect(Coordinates.new([:A1]).count).to eq 1
  end

  it 'can have more than one position' do
    expect(Coordinates.new([:A1, :A2]).count).to eq 2
  end

  it 'tells us if a coordinate is included' do
    expect(Coordinates.new([:A1])).to include :A1
  end

  it 'this cannot happen' do
    expect{Coordinates.new([:B1, :A1, :J1])}.to raise_error
  end
end
