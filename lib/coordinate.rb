class Coordinate
  attr_accessor :x_axis, :y_axis

  def initialize(coord)
    @x_axis = coord.split(",").first.to_i
    @y_axis = coord.split(",").last.to_i
  end

  def valid?(grid)
    x_length = grid.first.to_i
    y_length = grid.last.to_i
    @x_axis > x_length || @y_axis > y_length ? false : true
  end
end
