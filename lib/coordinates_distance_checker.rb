class CoordinatesDistanceChecker
  def self.check(positions)
    positions.sort.each_cons(2) do |position_a, position_b| 
      raise "BOOM" if(distant?(position_a, position_b))
    end
  end

  def self.distant?(position_a, position_b)
    normalize(position_b) - normalize(position_a) > 1
  end

  def self.normalize(position)
    position.to_s.chars.first.to_i(27) + position.to_s.chars.last.to_i - 1
  end
end
