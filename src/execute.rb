require_relative 'rover'
require_relative 'location'
require_relative 'plateau'

include Locations
include Plateau

puts "please input plateau border x:"
borderx = gets
puts "please input a correct number" unless(/^\d+$/.match(borderx))
exit

puts "please input plateau border y:"
bordery = gets
puts "please input a correct number" unless(/^\d+$/.match(bordery))
exit

puts "please input current coordinate x:"
coordinatex = gets
puts "please input a correct number" unless(/^\d+$/.match(coordinatex))
exit

puts "please input current coordinate y:"
coordinatey = gets
puts "please input a correct number" unless(/^\d+$/.match(coordinatey))
exit

puts "please input current coordinate towards:"
coordinatetowards = gets
puts "please input a correct towards" unless(/[A-Z]/.match(coordinatetowards))
exit

input_plateauborder = PlateauBorder.new(borderx.chomp.to_i,bordery.chomp.to_i)
input_location = Location.new(coordinatex.chomp.to_i,coordinatey.chomp.to_i,coordinatetowards.chomp)

input_command = 'MMRMMRMRRM'

rover = Rover.new(input_plateauborder,input_location,input_command)
result = rover.rover_execute()
puts result