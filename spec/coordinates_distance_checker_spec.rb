require 'coordinates_distance_checker'

describe CoordinatesDistanceChecker do
  it 'normalizes a position' do
    expect(CoordinatesDistanceChecker.normalize(:A1)).to eq 10
  end

  context 'calculates the distance between two positions' do
    it 'and tells us they are close' do
      expect(CoordinatesDistanceChecker.distant?(:A1, :A2)).to be false
    end

    it 'and tells us they are distant' do
      expect(CoordinatesDistanceChecker.distant?(:A1, :A3)).to be true
    end

    it 'tells us they are distant based on the letters' do
      expect(CoordinatesDistanceChecker.distant?(:A1, :B2)).to be true
    end

    it 'and tells us they are close based on the letters' do
      expect(CoordinatesDistanceChecker.distant?(:A1, :B1)).to be false
    end
  end
end
