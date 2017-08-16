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

  def return_delivery_instructions(command)
    grid_size_array = command.scan(/\d\w\d/).first.split("x")
    starting_location = Coordinate.new("0, 0")
    coordinates = format_coordinates(command)
    coordinates.map do |coord|
      directions = []
      target_location = Coordinate.new(coord)
      if target_location.valid?(grid_size_array)
        directions << axis_directions(target_location, starting_location)
        directions << "D"
        starting_location.x_axis = target_location.x_axis
        starting_location.y_axis = target_location.y_axis
      else
        raise ArgumentError, "I'm sorry, those coordinates are outside my delievery zone. Please increase my zone."
      end
      directions
    end
  end
end
