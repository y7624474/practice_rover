class Rover
  @@direction="NWSE"

  def initialize(location, command)
    @location = location
    @command = command
  end

  def rover_excute
    for inputcommand in 0.."#{@command}".size
      reg = Regexp.new @location[2]
      rover_command(reg,inputcommand)
    end
    return @location
  end

  def rover_move
    case @location[2]
      when 'N'
        @location[1]+=1
      when 'S'
        @location[1]-=1
      when 'W'
        @location[0]-=1
      when 'E'
        @location[0]+=1
      else
    end
  end

  def rover_command(reg,inputcommand)
    case @command[inputcommand]
      when 'L'
        index = (reg =~ @@direction)
        if index!=3
          @location[2] = @@direction[index+1]
        else
          @location[2] = @@direction[0]
        end
      # puts @location[2]
      when 'R'
        index=(reg =~ @@direction)
        if index!=0
          @location[2] = @@direction[index-1]
        else
          @location[2] = @@direction[3]
        end
      when 'M'
        rover_move
      else
    end
  end

end