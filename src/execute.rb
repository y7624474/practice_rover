require_relative 'rover'
require_relative 'location'
require_relative 'plateau'
require_relative 'input'
include Locations
include Plateau

input = Input.new

borderx = input.handle_number("please input plateau border x:")
bordery = input.handle_number("please input plateau border y:")
coordinatex = input.handle_number("please input current coordinate x:")
coordinatey = input.handle_number("please input current coordinate y:")
coordinatetowards = input.handle_string("please input current coordinate towards:")
command = input.handle_string("please input command:")

input_plateauborder = PlateauBorder.new(borderx.chomp.to_i,bordery.chomp.to_i)
input_location = Location.new(coordinatex.chomp.to_i,coordinatey.chomp.to_i,coordinatetowards.chomp)

input_command = command.chomp
rover = Rover.new(input_plateauborder,input_location,input_command)
result = rover.rover_execute()
puts result