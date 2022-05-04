puts "Ruby engine: #{RUBY_ENGINE}, #{RUBY_ENGINE_VERSION}"
def func1
   i = 0
   while i<=2
      puts "func1 at: #{Time.now}"
      sleep(2)
      i = i+1
   end
end

def func2
   j = 0
   while j<=2
      puts "func2 at: #{Time.now}"
      sleep(1)
      j = j+1
   end
end

def func3
   3.times {puts "Hello"}
end
puts "Started At #{Time.now}"
t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
t3 = Thread.new{func3()}
t1.join
t2.join
t3.join
puts "End at #{Time.now}"
