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

  def insert_x_direction(starting_location, direction_string)
    @x_axis >= starting_location.x_axis ?
    (@x_axis - starting_location.x_axis).times { direction_string << "E" } :
    (starting_location.x_axis - @x_axis).times { direction_string << "W" }
  end

  def insert_y_direction(starting_location, direction_string)
    @y_axis >= starting_location.y_axis ?
    (@y_axis - starting_location.y_axis).times { direction_string << "N" } :
    (starting_location.y_axis - @y_axis).times { direction_string << "S" }
  end
end
