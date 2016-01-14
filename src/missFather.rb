class MissFather
  def method_missing(method,*arg)
    puts "call father method: #{method}, parmer:#{arg[0]}"
  end
end