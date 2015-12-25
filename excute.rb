require_relative 'rover'

input_location = [3,3,'E']
input_command = 'MMRMMRMRRM'

rover = Rover.new(input_location,input_command)
result = rover.rover_excute()
puts result