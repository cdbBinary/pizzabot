require 'spec_helper'
require_relative '../lib/direction'
include Direction


describe Direction do
  describe "format_coordinates" do
    it "removes parentheses and returns an array" do
      string = format_coordinates("(1, 4) (2, 3)")
      expect(string).to eq(["1,4", "2,3"])
    end
  end

  describe "delivery_directions" do
    context "within 'delievery zone'" do
      it "returns sequence of axis directions" do
        grid_size_array = ["5", "5"]
        coordinates = %w{0,0 1,3 4,4 4,2 4,2 0,1 3,2 2,3 4,1}
        directions = delivery_instructions(coordinates, grid_size_array)
        expect(directions.join).to eq("DENNNDEEENDSSDDWWWWSDEEENDWNDEESSD")
      end
    end
    context "outside 'delievery zone'" do
      it "should raise ArgumentError for coordinates greater than grid size" do
        grid_size_array = ["5", "5"]
        coordinates = ["1, 7"]
        expect{delivery_instructions(coordinates, grid_size_array)}.to raise_error(ArgumentError)
      end
    end
  end

  describe "axis_direction" do
    it "returns a string of direction symbols" do
      starting_location = Coordinate.new("0, 0")
      target_location = Coordinate.new("1, 4")
      expect(axis_directions(target_location, starting_location).class).to eq(String)
      expect(axis_directions(target_location, starting_location)).to eq("ENNNN")
    end
  end
end
