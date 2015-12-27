require_relative 'direction'
require_relative 'location'

include Direction

class Rover

  def initialize(plateauborder, location, command)
    @plateauborder = plateauborder
    @location = location
    @command = command
  end

  def rover_execute
    for command_index in 0.."#{@command}".size
      rover_command(@location.towards, command_index)
      return false if !alert
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

  def rover_command(towards, command_index)
    case @command[command_index]
      when 'L'
        index = direction.index(towards)
        if index != LAST
          @location.towards = direction[index+1]
        else
          @location.towards = direction[FIRST]
        end
      when 'R'
        index = direction.index(towards)
        if index != FIRST
          @location.towards = direction[index-1]
        else
          @location.towards = direction[LAST]
        end
      when 'M'
        rover_move
      else
    end
  end

  def alert
    if (@location.x < 0 || @location.x > @plateauborder.x || @location.y < 0 || @location.y > @plateauborder.y)
      puts "Alert! rover is over border"
      return false
    else
      return true
    end
  end

end