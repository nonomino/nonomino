tp = Proc.new { |x| x+2 }
tp.call(3)
puts tp
def gen_times(factor)
  Proc.new {|n| n*factor }
end

times3 = gen_times(3)
times5 = gen_times(5)

times3.call(13)
times5.call(5)
times3.call(times5.call(4))
