#Hello world program
#require 'nokogiri';
require 'benchmark';
puts "Hello, World!";
#Heredocs
puts <<THINGS
jdjd
jdjfj
djjd
ejjdj
THINGS

#bang modifiers
name = "eugene\n";
p name #the "inspect" method, writes more info about a vafiable.
puts name.methods();
name.upcase!;
print name;

#if and unless
x = 25000;
p x
if x < 50000
		puts "#{x} is less than 50,000";
else
		puts "All fine";
end

#shorthand if
50 > 100 ? "Yes" : "No"
puts "Hello" if x <50000;

#unless (a negated if)
y = 75;
unless x > 50 #i.e, x is NOT greater than 50
		puts "#{y} is lesser than 50";
else 
		puts "#{y} is greater than 50";
end

#rand and case
a = rand(51)
case a
  when 1..6
  puts "1 to 6";
  when 25
  puts " 25";
  else
  "America is free!!";
end

#methods
def exFunc(a)
	puts "You wrote #{a}"
end
exFunc "What?";
exFunc "Great!!";

#classes
class Pineapple
	def taste
		puts "It tastes great";
	end
end
#class objects
PineappleObject = Pineapple.new
PineappleObject.taste
		#or like this:
PineappleObject.send(:taste)

=begin
#self pseudo-variable
	def AddOne
		self + 1
	end
puts 10.AddOne;
=end

#variables $global, @instance, @@class, CONSTANT IN UPPER CASE.

#strings

mstring = "ISayHello";
puts mstring
puts mstring.size
puts mstring.upcase
puts mstring.downcase
puts mstring.chars

#operators

a, b = 20, 10;

print a <=> b; puts ' '
