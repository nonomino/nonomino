puts "Hello, Enter phrase.\n"
string = gets.chomp!
puts string.tr("A-Za-z", "N-ZA-Mn-za-m")
