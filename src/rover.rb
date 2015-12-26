require_relative 'direction'
require_relative 'location'
include Direction
class Rover

  def initialize(location, command)
    @location = location
    @command = command
  end

  def rover_execute
    for command_index in 0.."#{@command}".size
      rover_command(@location.towards,command_index)
    end
    return @location
  end

  private
  def rover_move
    case @location.towards
      when 'N'
        @location.y+=1
      when 'S'
        @location.y-=1
      when 'W'
        @location.x-=1
      when 'E'
        @location.x+=1
      else
    end
  end

  def rover_command(towards,command_index)
    case @command[command_index]
      when 'L'
        puts direction
        index = direction.index(towards)
        if index != 3
          @location.get = direction[index+1]
        else
          @location.towards = direction[0]
        end
      when 'R'
        index = direction.index(towards)
        if index != 0
          @location.towards = direction[index-1]
        else
          @location.towards  = direction[3]
        end
      when 'M'
        rover_move
      else
    end
  end

end