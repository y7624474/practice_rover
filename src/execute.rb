require_relative 'rover'
require_relative 'location'
include Locations
input_location = Location.new(3,3,'E')
input_command = 'MMRMMRMRRM'

rover = Rover.new(input_location,input_command)
result = rover.rover_execute()
puts result