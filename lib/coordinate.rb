class Coordinate

	GRID_LETTERS = ("A".."J")
	GRID_NUMBERS = ("1".."10")

  def self.parse(string)
    new(string)
  end

	def initialize(location)
    @location = location.to_sym
	end

	def location
		@location
	end

	def valid?
		on_grid?
	end

	def on_grid?
		GRID_LETTERS.include?(location.to_s.slice(0)) && 
      GRID_NUMBERS.include?(location.to_s.slice(1..2))
	end

	def <=>(other_coordinate)
		return nil unless other_coordinate.is_a? Coordinate
		location.to_s <=> other_coordinate.location.to_s
	end

  def ==(other_coordinate)
		return false unless other_coordinate.is_a? Coordinate
		location.to_s == other_coordinate.location.to_s
  end

	def convert_to_number
		location.to_s.slice(0).ord + location.to_s.slice(1..2).to_i
  end
end

