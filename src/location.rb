# class Location
#
#   def initialize(x,y,towards)
#     @x = x
#     @y = y
#     @towards = towards
#   end
#
#   def get_x
#     @x
#   end
#
#   def get_y
#     @y
#   end
#
#   def get_towards
#     @towards
#   end
#
#   def get(name)
#
#     self.send "get_#{name.to_sym}"
#   end
# end
module Locations
  Location = Struct.new(:x,:y,:towards)
end