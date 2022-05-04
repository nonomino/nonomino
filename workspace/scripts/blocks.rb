ef test
  yield 5
  puts "You are in the method test"
  yield 100
end
test {|i| puts "You are in the block #{i}"}
def test2(&block)
  block.call
end
test2 { puts "Hello World!"}
