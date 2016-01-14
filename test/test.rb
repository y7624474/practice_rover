require_relative '../src/dynamic'

def test_dynamic(parmer)
  dynamic = Dynamic_method.new
  dynamic.send "get_#{parmer}"
end

if(1)
  # 不知道传入什么 可能是累加 或者其他逻辑产生某个结果
  input = 'w'
  test_dynamic(input)
end