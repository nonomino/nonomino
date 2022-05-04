puts "Before blocking reverse: " +
     "HELLO".reverse
       
# Apply patching
class String
  def reverse
    "Reversing blocked!!"
  end
end
  
# After applying patching
puts "After blocking reverse: " + 
     "HELLO".reverse
