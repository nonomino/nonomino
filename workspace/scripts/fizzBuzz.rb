puts "Enter number"
n = gets.to_i
a = String.new
a << "Fizz" if n%3 == 0
a << "Buzz" if n%5 == 0
a << "FizzBuzz"  if n%15 == 0
a << "Caught ya!" if a.empty?
puts a

