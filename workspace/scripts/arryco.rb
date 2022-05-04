class Array 
def my_each
c = 0 
until c == self.size
yield self[c]
c += 1
end
self
end
end

array = [1,2,3,4,5]
array.my_each { |i| puts "writing #{i} now" }
