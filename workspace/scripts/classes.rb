class MyClass
   attr_accessor :var, :var2, :request, :ticket

def move(dest)
    puts "Moved to #{dest}"
end

def vars
puts "I am #{var} and #{var2}"
end

end
def ticket(request)
    puts "You got the ticket for #{request}!"
end
myclass = MyClass.new
myclass.move("California")
myclass.var = "One"
myclass.var2 = "Two"
myclass.vars
#myclass.request = ""
id = myclass.object_id
puts "the object id is #{id}"
puts "What do you want now?"
ticket "hello"
