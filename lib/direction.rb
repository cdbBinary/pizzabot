require_relative "./coordinate"
module Direction

  def format_coordinates(command)
    coordinates = command.scan(/\(.*?\)/)
    coordinates.map {|i| i.gsub(/[^\d,\.]/, '')}
  end

  def axis_directions(target_location, starting_location)
    direction_string = ""
    target_location.insert_x_direction(starting_location, direction_string)
    target_location.insert_y_direction(starting_location, direction_string)
    direction_string
  end

  def return_delivery_instructions(coordinates, grid_size_array)
    starting_location = Coordinate.new("0, 0")
    coordinates.map do |coord|
      directions = []
      target_location = Coordinate.new(coord)
      raise ArgumentError, "Invalid Grid Size" unless target_location.valid?(grid_size_array)
        directions << axis_directions(target_location, starting_location)
        directions << "D"
        starting_location.x_axis = target_location.x_axis
        starting_location.y_axis = target_location.y_axis
      directions
    end
  end
end
