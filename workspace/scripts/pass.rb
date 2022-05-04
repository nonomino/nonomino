pass = gets.chomp!
cnt = pass.count('0123456789')
spec = pass.count('!@#$%&*')
len = pass.count('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
if cnt >= 2 && spec >= 2 && len >= 7
  puts "Strong"
else
  puts "Weak"
end
