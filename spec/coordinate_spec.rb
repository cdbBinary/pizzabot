require 'spec_helper'
require_relative '../lib/coordinate'

describe Coordinate, type: :model  do
  describe "validate_coordinates" do
    context "valid" do
      it "returns true if x and y are within given grid size" do
        location = Coordinate.new("1, 4")
        expect(location.valid?(["5", "5"])).to eq(true)
      end
    end
    context "invalid" do
      it "returns false if x or y axis is greater than grid size" do
        location = Coordinate.new("1, 8")
        expect(location.valid?(["5", "5"])).to eq(false)
      end
    end
  end
end
