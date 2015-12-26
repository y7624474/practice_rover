require_relative '../src/rover'
require_relative '../src/location'
include Locations

describe Rover do
  let(:location) {Location.new(1,2,'N')}
  it 'change direction when input single command' do
    direction_command = 'L'
    rover = Rover.new(location,direction_command)
    expect(rover.rover_execute.towards).to eq ('W')
  end

  it 'change direction when input serial command' do
    direction_command = 'LRLLRRR'
    rover = Rover.new(location,direction_command)
    expect(rover.rover_execute.towards).to eq ('E')
  end

  it 'rover can move when input command with M' do
    direction_command = 'LRLLRRRM'
    rover = Rover.new(location,direction_command)
    expect(rover.rover_execute.x).to eq (2)
  end

end