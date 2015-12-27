class Input

  def handle_number(content)
    puts content
    output = gets
    unless(/^\d+$/.match(output))
      puts "please input a correct number"
      exit
    else
      output
    end
  end

  def handle_string(content)
    puts content
    output = gets
    unless(/[A-Z]+/.match(output))
      puts "please input a correct command"
      exit
    else
      output
    end
  end
end