class Coordinates
  def initialize(positions, checker=CoordinatesDistanceChecker)
    checker.check(positions)
    @positions = positions
  end

  def count
    @positions.count
  end

  def include?(position)
    @positions.include?(position)
  end
end
